#!/usr/bin/env python3

# ./write_terraform.py 41144648 ../service/compute/computeDashboard2.tf

# ./write_terraform.py 41144639 ../service/cloudsql/cloudSQLDashboard.tf

# see https://github.com/observeinc/content-eng-tools/blob/main/engage_datasets/config/configfile.ini for example config file

"""This file is for converting json produced by getTerraform GraphQL method"""

import json
import sys
import os
import configparser
import re
import requests
from gql import gql, Client
from gql.transport.requests import RequestsHTTPTransport


DASHBOARD_ID=sys.argv[1]
OUTPUTFILENAME=sys.argv[2]
ENVIRONMENT="arthur-eng-tenant"
bear_toke=None
print('dashboard id:', DASHBOARD_ID)
print('file name:', OUTPUTFILENAME)

OUTPUT_EXISTS=os.path.exists(OUTPUTFILENAME)

print(OUTPUT_EXISTS)

def getObserveConfig(config,environment):
    """Fetches config file"""
    #Set your Observe environment details in config\configfile.ini
    configuration = configparser.ConfigParser()
    configuration.read("config.ini")
    observe_configuration = configuration[environment]

    return observe_configuration[config]

def get_bearer_token():
    """Gets bearer token for login"""
    # pylint: disable=invalid-name, global-statement;
    global bear_toke
    if bear_toke is None:

        url = getObserveConfig("token_url",ENVIRONMENT)
        user_email = getObserveConfig("user_email",ENVIRONMENT)
        user_password = getObserveConfig("user_password",ENVIRONMENT)

        message = '{"user_email":"$user_email$","user_password":"$user_password$"}'

        tokens_to_replace = {'$user_email$':user_email,
        '$user_password$':user_password,
        }
                
        for key, value in tokens_to_replace.items():
            message = message.replace(key,value)

        header = {
            "Content-Type": "application/json",
        }
        
        response = json.loads(requests.post(url, data=message, headers=header, timeout=10).text)
      # print(response)
        bear_toke = response["access_key"]

    return bear_toke


def get_ids(file_name):
    """gets unique set of ids that need to be replaced in terraform def"""
    my_list= []
    lines = []
      # read file
    with open(file_name, 'r', encoding="utf-8") as fp:
        # read and store all lines into list
        lines = fp.readlines()

    for _, line in enumerate(lines):
        if "datasetId" in line:
            # print(f'''line: {number} datasetId {line} ''')
            # print(re.findall('"([^"]*)"', line))
            my_list = my_list + re.findall('"([^"]*)"', line)

    # convert to dict to eliminate duplicate values and then back to list
    my_list = list( dict.fromkeys(my_list) )

    return my_list

def get_dashboard_terraform(dashboard_id, output_file_name):
    """get dashboard terraform from graphql"""
    toke=get_bearer_token()
    customer_id=getObserveConfig("customer_id",ENVIRONMENT)
    # Create a GraphQL client using the defined transport
    client = Client(transport=RequestsHTTPTransport(
        url=getObserveConfig("meta_url",ENVIRONMENT),
        retries=3,
        headers={'Authorization': f'''Bearer {customer_id} {toke}'''},
    ), fetch_schema_from_transport=True)

    # Provide a GraphQL query
    query = gql(
        """
          query terraform($dashboard_id: ObjectId!) {
            getTerraform( id:$dashboard_id, type: Dashboard){
              resource
            }
          }
        """
    )

    params = {
      "dashboard_id": f'''{dashboard_id}'''
    }

      # Execute the query on the transport
    result = client.execute(query, variable_values=params)

    original_stdout = sys.stdout

    # write results to file
    with open(output_file_name, "w", encoding="utf-8") as outfile:
        sys.stdout = outfile # Change the standard output to the file we created.
        # pylint: disable=unsubscriptable-object;
        print(result['getTerraform']['resource'])
        sys.stdout = original_stdout #

def get_dashboard_name(dashboard_id):
    """get dashboard terraform from graphql"""
    toke=get_bearer_token()
    customer_id=getObserveConfig("customer_id",ENVIRONMENT)
    # Create a GraphQL client using the defined transport
    client = Client(transport=RequestsHTTPTransport(
        url=getObserveConfig("meta_url",ENVIRONMENT),
        retries=3,
        headers={'Authorization': f'''Bearer {customer_id} {toke}'''},
    ), fetch_schema_from_transport=True)

      # Provide a GraphQL query
    query = gql(
        """
        query dashboard($dashboard_id: ObjectId!){
          dashboard(id:$dashboard_id){
            name
          }
        }
        """
    )

    params = {
      "dashboard_id": f'''{dashboard_id}''',
    }
  # Execute the query on the transport
    result = client.execute(query, variable_values=params)
    # pylint: disable=unsubscriptable-object;
    return result['dashboard']['name']

def get_dataset_terraform(dataset_id):
    """get dashboard terraform from graphql"""
    toke=get_bearer_token()
    customer_id=getObserveConfig("customer_id",ENVIRONMENT)
    # Create a GraphQL client using the defined transport
    client = Client(transport=RequestsHTTPTransport(
        url=getObserveConfig("meta_url",ENVIRONMENT),
        retries=3,
        headers={'Authorization': f'''Bearer {customer_id} {toke}'''},
    ), fetch_schema_from_transport=True)

    # Provide a GraphQL query
    query = gql(
        """
          query dataset ($dataset_id: ObjectId!){
            getTerraform(id:$dataset_id, type: Dataset) {
              dataSource
              importName
            }
          }
        """
    )

    params = {
      "dataset_id": f'''{dataset_id}''',
    }
  # Execute the query on the transport
    result = client.execute(query, variable_values=params)

    return result



def write_dashboard():
    """Used to write terraform file"""
    # pylint: disable=invalid-name;
    TMP_FILE_NAME=f'''{OUTPUTFILENAME}_tmp'''

    # writes to temp file
    get_dashboard_terraform(DASHBOARD_ID, TMP_FILE_NAME)

    DASHBOARD_NAME = get_dashboard_name(DASHBOARD_ID)

    # gets list of unique dataset ids to replace
    ids_to_replace = get_ids(TMP_FILE_NAME)

    # dict for stuff we are replacing
    stuff_to_replace_dict ={ "datasets": []}

    # each dataset id
    for dataset_id in ids_to_replace:
        # get dataset terraform 
        result = get_dataset_terraform(dataset_id)

        dataset_obj={}

        dataset_obj['dataset_id'] = dataset_id
        # pylint: disable=unsubscriptable-object;
        dataset_obj['variable_name'] = result['getTerraform']['importName']
        # pylint: disable=unsubscriptable-object;
        dataset_obj['terraform'] = result['getTerraform']['dataSource']

        # print(dataset_obj)
        stuff_to_replace_dict["datasets"].append(dataset_obj)

    original_stdout = sys.stdout

    # local to write to file
    locals_def = []
    locals_def.append('locals {')
    locals_def.append('workspace = var.workspace.oid')
    locals_def.append(f'''dashboard_name = format(var.name_format, "{DASHBOARD_NAME}")''') 

    workspace_oid = None

    for line in stuff_to_replace_dict["datasets"]:
        # local variable name
        variable_name = line['variable_name']
        # add to list to write to file
        locals_def.append(f'''{variable_name} = data.observe_dataset.{variable_name}.id''')

        # get worspace and name for replacement with variables
        workspace_oid=re.findall('workspace[^"]*("[^"]*")', line['terraform'])[0]
        name=re.findall('name[^"]*("[^"]*")', line['terraform'])[0]

        # replace
        line['terraform'] = line['terraform'].replace(workspace_oid, "local.workspace")
        line['terraform'] = line['terraform'].replace(name, f'''format(var.name_format, {name})''')

    locals_def.append('}')

    # write everything to final terraform file
    with open(OUTPUTFILENAME, "w", encoding="utf-8") as outfile:
        sys.stdout = outfile # Change the standard output to the file we created.

        # write local variable definitions
        for local_line in locals_def:
            print(local_line)

        # write data resources
        for dataset_line in stuff_to_replace_dict["datasets"]:
            print(dataset_line['terraform'])

        sys.stdout = original_stdout #

    dashboard_lines = []

    # read dashboard temp file into lines
    with open(TMP_FILE_NAME, 'r', encoding="utf-8") as fp:
        # read an store all lines into list
        dashboard_lines = fp.readlines()

    # replace dataset ids with variable and write to file
    with open(OUTPUTFILENAME, 'a', encoding="utf-8") as fp:

        for _, line in enumerate(dashboard_lines):

            for dataset_line in stuff_to_replace_dict["datasets"]:
                # pylint: disable=line-too-long;
                line = line.replace(dataset_line['dataset_id'], f'''${{local.{dataset_line['variable_name']}}}''')

            line = line.replace(workspace_oid, 'local.workspace')

            line = line.replace(DASHBOARD_NAME, "${local.dashboard_name}")

            fp.write(line)

    os.remove(TMP_FILE_NAME)

    terraform_command = f'terraform fmt {OUTPUTFILENAME}'
    os.system(terraform_command)


write_dashboard()

# pylint: disable=pointless-string-statement;
"""
query terraform {
      getTerraform( id:"41143378", type: Dashboard){
        resource
      }
    }

    python3 writeTerraform.py db.json

    grep -rh "datasetId" --include \*.tf | sed -e $'s/,/\\\n/g' | sed -e 's/[[:space:]]//g' | sort | uniq | sed -e 's/"datasetId"://g'

    query datasets {
      datasetSearch(labelMatches:["GCP/Compute"]){
        dataset {
          id
          name
          kind
          label
          workspaceId
        }
      }
    }

     sed -i '' "s:41143354:"\${local.COMPUTE_INSTANCE}":g" *.tf
"""


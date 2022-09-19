#!/usr/bin/env python3
from curses import meta
from importlib.metadata import metadata
import json
import pathlib
from pickle import OBJ
import subprocess
import sys
import re
import os
import textwrap
from argparse import ArgumentParser, HelpFormatter

# Used for printing in help command


class RawFormatter(HelpFormatter):
    def _fill_text(self, text, width, indent):
        return "\n".join([textwrap.fill(line, width) for line in textwrap.indent(textwrap.dedent(text), indent).splitlines()])

# Sources of stuff used to create this

# ./serviceUtilities.py fetch_metric_descriptors -o compute/computemetrics.json -m "compute.googleapis.com"
# ./serviceUtilities.py create_terraform -i compute/computemetrics.json -t compute/local_metricdescriptors.tf
# https://github.com/googleapis/python-monitoring
# https://cloud.google.com/python/docs/reference/monitoring/latest/google.cloud.monitoring_v3.services.metric_service.MetricServiceClient#google_cloud_monitoring_v3_services_metric_service_MetricServiceClient_transport
# https://cloud.google.com/monitoring/api/metrics#metadata
# https://cloud.google.com/monitoring/api/metrics_gcp#gcp-compute
# https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors#MetricDescriptor.FIELDS.unit
# https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors#metricdescriptormetadata


try:
    from google.cloud import monitoring_v3
except ImportError:
    subprocess.check_call([sys.executable, "-m", "pip",
                          "install", 'google-cloud-monitoring'])
finally:
    from google.cloud import monitoring_v3


def fetch_metric_descriptors(args_in):
    """Fetch metric descriptors from google cloud"""
    # Create a client
    client = monitoring_v3.MetricServiceClient()
    # metric filter
    m_filter = "metric.type = starts_with(\"{metric_namespace}/\")"
    # project for metrics
    project = "projects/{projectid}"

    # Initialize request argument(s)
    request = monitoring_v3.ListMetricDescriptorsRequest(
        name=project.format(projectid=args_in.project_id),
        filter=m_filter.format(metric_namespace=args_in.metric_filter),
    )

    # Make the request
    page_result = client.list_metric_descriptors(request=request)

    # open file to write results
    json_file = open(args_in.output_file_name, "w", encoding="utf-8")

    # Base object
    metrics_dict = {"metricDescriptors": []}

    # Handle the response
    for response in page_result:
        # print(response)

        # https://cloud.google.com/java/docs/reference/proto-google-common-protos/latest/com.google.api.MetricDescriptor.MetricKind
        def metric_kind_transform(kind):
            rtn_val = ""

            if kind == 1:
                rtn_val = 'gauge'
            elif kind == 2:
                rtn_val = 'delta'
            elif kind == 3:
                rtn_val = 'cumulativeCounter'
            else:
                rtn_val = f'BAD_VAL-{kind}'

            return rtn_val

        # https://cloud.google.com/java/docs/reference/proto-google-common-protos/latest/com.google.api.LaunchStage
        def launch_stage_transform(kind):
            rtn_val = ""

            if kind == 4:
                rtn_val = 'GA'
            elif kind == 2:
                rtn_val = 'ALPHA'
            elif kind == 3:
                rtn_val = 'BETA'
            else:
                rtn_val = f'BAD_VAL-{kind}'

            return rtn_val
        # https://cloud.google.com/java/docs/reference/proto-google-common-protos/latest/com.google.api.MetricDescriptor.ValueType

        def value_type(kind):
            rtn_val = ""

            if kind == 1:
                rtn_val = 'BOOL'
            elif kind == 2:
                rtn_val = 'INT64'
            elif kind == 3:
                rtn_val = 'DOUBLE'
            elif kind == 4:
                rtn_val = 'STRING'
            elif kind == 5:
                rtn_val = 'DISTRIBUTION'
            else:
                rtn_val = f'BAD_VAL-{kind}'

            return rtn_val

        def make_label(resp):
            label = []
            for i in resp:
                label.append({
                    "key": i.key,
                    "description": i.description
                })
            return label

        def make_resource(resp):
            resource = []
            for i in resp:
                resource.append(
                    i)
            return resource

        def make_interval(resp):
            return str(resp.sample_period.seconds)+"s"

        def create_domain_specific_properties(val):
            # print(val)
            if "database" in val:
                database_platform = re.search(
                    '(?<=database/)([^/]+)', val).group()
                # print(database_platform)
                if ("mysql" in database_platform) or ("postgresql" in database_platform) or ("sqlserver" in database_platform):
                    return 'dataBase', database_platform
                else:
                    return 'dataBase', 'ALL'
            else:
                return None, None

        metric_bin = "none"
        metric_category = "none"
        metric_bin_path = "none"

        split_string = response.name.split("/")
        split_string_length = len(split_string)-4

        is_database, database_metric_bin = create_domain_specific_properties(
            response.name)

        if is_database is not None:
            metric_bin = database_metric_bin

            if split_string_length == 2:
                metric_bin_path = f'''{split_string[3]}/{split_string[4]}'''
            elif split_string_length == 3:
                metric_category = split_string[5]
                metric_bin_path = f'''{split_string[3]}/{split_string[4]}'''
            elif split_string_length == 4:
                metric_category = split_string[6]
                metric_bin_path = f'''{split_string[3]}/{split_string[4]}'''

        elif split_string_length == 2:
            metric_bin = split_string[4]
            metric_bin_path = f'''{split_string[3]}/{split_string[4]}'''

        elif split_string_length == 3:
            metric_bin = split_string[4]
            metric_category = split_string[5]
            metric_bin_path = f'''{split_string[3]}/{split_string[4]}'''

        metric_name = re.search(
            "[^\/]+$", response.name)  # pylint: disable=anomalous-backslash-in-string;
        google_metric_path = re.search(
            '(?<=metricDescriptors/)(.+)', response.name)

        def make_name(met_cat, met_name):
            if met_cat == "none":
                return met_name.group()
            else:
                return f'{met_cat}_{met_name.group()}'

        obj_line = {}
        obj_line["terraform_variable_name"] = make_name(
            metric_category, metric_name)
        obj_line["metric_bin"] = metric_bin
        obj_line["metric_bin_path"] = metric_bin_path
        obj_line["metric_category"] = metric_category
        obj_line["google_metric_path"] = google_metric_path.group()
        obj_line["valuetype"] = value_type(response.value_type)
        obj_line["name"] = response.name
        obj_line["type"] = metric_kind_transform(response.metric_kind)
        obj_line["type_num"] = response.metric_kind
        obj_line["metric_path"] = response.type
        obj_line["labels"] = make_label(response.labels)
        obj_line["metric_kind"] = response.metric_kind
        obj_line["value_type"] = response.value_type
        obj_line["unit"] = response.unit
        obj_line["description"] = response.description
        obj_line["display_name"] = response.display_name
        obj_line["launch_stage"] = response.launch_stage
        obj_line["launchStage"] = launch_stage_transform(response.launch_stage)
        obj_line["monitored_resource_types"] = make_resource(
            response.monitored_resource_types)
        obj_line["interval"] = make_interval(response.metadata)

        key, val = create_domain_specific_properties(response.name)

        if key != None:
            obj_line[key] = val

        metrics_dict["metricDescriptors"].append(obj_line)

    json_file.write(json.dumps(metrics_dict, indent=4, sort_keys=True))
    json_file.close()

    print('###############################################################################')
    print('Arguments used - ', args_in)
    print()
    print("File written to - ", args_in.output_file_name)
    print('###############################################################################')

###############################################################################

###############################################################################

###############################################################################


def create_terraform(args_in):
    """Create terraform local variable file from json input file"""

    terraform_output_file = open(
        args_in.terraform_file_name, "w", encoding="utf8")

    terraform_output_file.write(f'''
    ######################
    # This file is autogenerated
    # run serviceUtilities.py in service directory to create this file
    # serviceUtilities.py -h for list of commands and options
    ######################
    locals {{{args_in.terraform_local_variable_name} = {{
        ''')
    terraform_output_file.close()

    terraform_output_file = open(
        args_in.terraform_file_name, "a",  encoding="utf8")

    with open(args_in.input_file_name, encoding="utf8") as data_file:
        data = json.load(data_file)

        for metric in data['metricDescriptors']:
            # print ("name=", metric['name'])
            # print ("launch_stage=", metric['launch_stage'])
            # metric_bin=""
            # metric_category="none"

            # split_string=metric['name'].split("/")
            # split_string_length = len(split_string)-4

            # if split_string_length==2:
            #     metric_bin=split_string[4]

            # elif split_string_length==3:
            #     metric_bin=split_string[4]
            #     metric_category=split_string[5]

            # metric_name = re.search("[^\/]+$", metric['name']) # pylint: disable=anomalous-backslash-in-string;
            # google_metric_path = re.search('(?<=metricDescriptors/)(.+)', metric['name'])

            # def make_name(met_cat, met_name):
            #     if met_cat =="none":
            #         return  met_name.group()
            #     else:
            #         return f'{met_cat}_{met_name.group()}'

            def check_prop(key, met):
                # print(val)
                if key in met:
                    return f'{key} = "{met[key]}"'
                else:
                    return ""

            terraform_line = f'''    {metric['terraform_variable_name']} = {{
                type = "{metric['type']}"
                description = <<-EOF
                    {metric['description']}
                EOF
                launchStage = "{metric['launchStage']}"
                rollup = "avg"
                aggregate = "sum"
                metricCategory = "{metric['metric_category']}"
                google_metric_path = "{metric['google_metric_path']}"
                label = "{metric['display_name']}"
                unit = "{metric['unit']}"
                metricBin = "{metric['metric_bin']}"
                valuetype = "{metric['valuetype']}"
                {check_prop('dataBase', metric)}
                }}
                '''

            terraform_output_file.write(terraform_line)

    terraform_output_file.write("}}")
    terraform_output_file.close()

    print('###############################################################################')
    print('Arguments used - ', args)
    print()
    terraform_file_directory = os.path.dirname(
        os.path.abspath(args.terraform_file_name))
    print("directory for terraform fmt = ", terraform_file_directory)
    terraform_command = f'terraform -chdir="{terraform_file_directory}" fmt'
    print("terraform cmd = ", terraform_command)
    os.system(terraform_command)

    # certain characters make terraform explode
    # This tends to be super painful to debug export TF_LOG=DEBUG; terraform apply might help
    sed_command = f'sed -i\'\' -e \'s/>/greater than/g; s/(//g; s/)//g; s/&/and/g;\' "{args.terraform_file_name}"'  # pylint: disable=line-too-long;
    print("sed cmd = ", sed_command)
    os.system(sed_command)

    terraform_command = f'terraform -chdir="{terraform_file_directory}" validate'
    print("terraform cmd = ", terraform_command)
    os.system(terraform_command)
    print('###############################################################################')

###############################################################################

###############################################################################

###############################################################################


def create_doc_metrics(args_in):
    """Create file for Observe Docs"""
    service_name = args_in.service_name

    temp = open(args_in.output_file_name, "w", encoding="utf8")

    temp.write(f'''\
# {service_name.capitalize()} metrics
<!---
This is an auto generated file.  Run ./serviceUtilities.py - h in terraform-observe-google/service for help.
-->
This page lists the {service_name} metrics collected by the GCP Integration.
''')

    temp.close()
    with open(args_in.input_file_name, encoding="utf8") as data_file:
        data = json.load(data_file)

    output_file = open(args_in.output_file_name, "a",  encoding="utf8")

    mid_section = ''''''
# create docs for observe docs ex - ./serviceUtilities.py create_doc_metrics -i compute/computemetrics.json -o compute/computemetrics.md -s compute
    metric_bin_list = []
    for obj in data["metricDescriptors"]:
        metric_bin_list.append(obj['metric_bin'])

    metric_bin_list = list(dict.fromkeys(metric_bin_list))

    for metric_bin_value in metric_bin_list:

        for obj in data["metricDescriptors"]:

            if ((obj['launch_stage'] == 4 or obj['launch_stage'] == 3) and obj['metric_bin'] == metric_bin_value):
                metric_category = obj['metric_category'] = obj['metric_category']
                name = re.search('([^/]+$)', obj['name']).group()
                if metric_category != "none":
                    name = f'''{metric_category}/{name}'''

                description = obj['description']
                metric_bin_path = obj['metric_bin_path']

                # display_name = obj['display_name']

                mid_section += f'''\
* - `{name}`
  - {description}
'''

        print("write")
        output_file.write(f'''\

## {metric_bin_value.upper()}
{metric_bin_path}

```{{list-table}}
:header-rows: 1
:widths: 35 65
:class: force-wrap-table

* - Metric
  - Description

{mid_section}
```
''')

    print('###############################################################################')
    print('Arguments used - ', args_in)
    print()
    print("File written to - ", args_in.output_file_name)
    print('###############################################################################')


###############################################################################
# parse command line args
###############################################################################
PARSER_DESCRIPTION = '''
Commands for fetching metrics from google cloud, producing a terraform local variable file for metrics and documentation for metics.

help commands:
    serviceUtilities.py fetch_metric_descriptors - h
    serviceUtilities.py create_terraform - h
    serviceUtilities.py create_doc_metrics - h

If you want to convert a terraform variable to file for use with create_doc_metrics here is a template - tf output - json compute_local_metric_descriptors | jq - r '. | {metricDescriptors: [keys[] as $k | {name: ($k), description: (.[$k] | .description)}]}' > /Users/arthur/content_eng/terraform-observe-google/service/compute/tf_compute.json

'''

parser = ArgumentParser(prog='./serviceUtilities.py',
                        description=PARSER_DESCRIPTION, formatter_class=RawFormatter)

subparsers = parser.add_subparsers(
    title='subcommands', description='valid subcommands')

HELP_TEXT = '''
create local terraform variable file

 ex - serviceUtilities.py create_terraform -i compute/computemetrics.json -t compute/local_metricdescriptors.tf | 
 serviceUtilities.py create_terraform -i cloudfunctions/cloudfunctionsmetrics.json -t cloudfunctions/local_metricdescriptors.tf
'''
##########################################
# Sub parser for create_terraform command
##########################################
parser_create_terraform = subparsers.add_parser('create_terraform',
                                                help=HELP_TEXT, formatter_class=RawFormatter)

parser_create_terraform.add_argument(

    "-t",
    "--terraform_file_name",
    dest="terraform_file_name",
    action="store",
    help="relative path of exported terraform file ex - compute/local_metricsdescriptors.tf",
    required=True,
    type=lambda p: pathlib.Path(p).absolute(),
    default="local_metricsdescriptors.tf",
)

parser_create_terraform.add_argument(

    "-v",
    "--terraform_local_variable_name",
    dest="terraform_local_variable_name",
    action="store",
    help="name  of terraform local variable default - metrics_definitions",
    required=False,
    default="metrics_definitions",
)

parser_create_terraform.add_argument(

    "-i",
    "--input_file_name",
    dest="input_file_name",
    action="store",
    help="relative path of created json file from fetch_metric_descriptors ex - compute/computemetrics.json",  # pylint: disable=line-too-long;
    required=True,
    type=lambda p: pathlib.Path(p).absolute(),
    default="metricsdescriptorsresponse.json",

)

parser_create_terraform.set_defaults(func=create_terraform)

##########################################
# Sub parser for fetch_metric_descriptors command
##########################################
parser_fetch_metric_descriptors = subparsers.add_parser('fetch_metric_descriptors',
                                                        help='''metric descriptors from google cloud ex - ./serviceUtilities.py
     fetch_metric_descriptors -o compute/computemetrics.json -m "compute.googleapis.com"
     | ./serviceUtilities.py fetch_metric_descriptors -o cloudsql/cloudsqlmetrics.json -m "cloudsql.googleapis.com" |
     ./serviceUtilities.py fetch_metric_descriptors -o loadbalancing/loadbalancingmetrics.json -m "loadbalancing.googleapis.com"
     | ./serviceUtilities.py fetch_metric_descriptors -o storage/storagemetrics.json -m "storage.googleapis.com"
   
     ''')

parser_fetch_metric_descriptors.add_argument(

    "-o",
    "--output_file_name",
    dest="output_file_name",
    action="store",
    help="relative path of created json file",
    required=True,
    type=lambda p: pathlib.Path(p).absolute(),
    default="metricsdescriptorsresponse.json",

)

parser_fetch_metric_descriptors.add_argument(
    "-p",
    "--projectId",
    dest="project_id",
    action="store",
    help="google project id ex. terraflood-345116",
    required=False,
    default="terraflood-345116"
)

parser_fetch_metric_descriptors.add_argument(
    "-m",
    "--metricFilter",
    dest="metric_filter",
    action="store",
    help="metrics to download ex. compute.googleapis.com",
    required=True
)

parser_fetch_metric_descriptors.set_defaults(func=fetch_metric_descriptors)

##########################################
# Sub parser for create_doc_metrics command
##########################################
parser_create_doc_metrics = subparsers.add_parser('create_doc_metrics',
                                                  help='''create docs for observe docs ex - ./serviceUtilities.py
     create_doc_metrics -i compute/computemetrics.json -o compute/compute-metrics.md -s compute | 
     ./serviceUtilities.py create_doc_metrics -i storage/storagemetrics.json -o loadbalancing/cloud-storage-metrics.md -s storage |
     ./serviceUtilities.py create_doc_metrics -i loadbalancing/loadbalancingmetrics.json -o loadbalancing/cloud-load-balancing-metrics.md -s loadbalancing | 
    ./serviceUtilities.py create_doc_metrics -i cloudfunctions/cloudfunctionsmetrics.json -o /Users/arthur/content_eng/observe-docs/docs/content/integrations/gcp/cloud-functions-metrics.md -s cloudfunctions | 
        
        
        ''')

parser_create_doc_metrics.add_argument(

    "-i",
    "--input_file_name",
    dest="input_file_name",
    action="store",
    help="relative path of created json file from fetch_metric_descriptors ex - compute/computemetrics.json",  # pylint: disable=line-too-long;
    required=True,
    type=lambda p: pathlib.Path(p).absolute(),
    default="metricsdescriptorsresponse.json",

)

parser_create_doc_metrics.add_argument(

    "-o",
    "--output_file_name",
    dest="output_file_name",
    action="store",
    help="relative path of created json file",
    required=True,
    type=lambda p: pathlib.Path(p).absolute(),

)

parser_create_doc_metrics.add_argument(

    "-s",
    "--service_name",
    dest="service_name",
    action="store",
    help="Service name to document ex - compute",
    required=True,

)

parser_create_doc_metrics.set_defaults(func=create_doc_metrics)
##########################################
# Parse args
##########################################
args = parser.parse_args()
args.func(args)

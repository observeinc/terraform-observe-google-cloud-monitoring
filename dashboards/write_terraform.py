#!/usr/bin/env python3

# ./write_terraform.py compute_db.json ../service/compute/computeDashboard.tf


"""This file is for converting json produced by getTerraform GraphQL method

    sed -i '' "'/^[[:space:]]*#/!s:41144592:"\${local.ProjectsCollectionEnabled}":g" *.tf
    sed -i '' "s:${local.ResourcesAssetInventory}:"\${local.ResourcesAssetInventory}":g" *.tf
    sed -i '' "s:${local.CloudSQLMetrics}:"\${local.CloudSQLMetrics}":g" *.tf
"""


import json
import sys
import os

INPUTFILENAME=sys.argv[1]
OUTPUTFILENAME=sys.argv[2]

print('file name:', INPUTFILENAME)
print('file name:', OUTPUTFILENAME)

OUTPUT_EXISTS=os.path.exists(OUTPUTFILENAME)

print(OUTPUT_EXISTS)


def write_dashboard():
    """Used to write terraform file"""
    original_stdout = sys.stdout

    file_write_mode = "w"

    if OUTPUT_EXISTS is True:
        print(f'''File exists - {OUTPUTFILENAME}''')
        file_write_mode = "a"
        # list to store file lines
        lines = []
        # read file
        with open(OUTPUTFILENAME, 'r', encoding="utf-8") as fp:
            # read an store all lines into list
            lines = fp.readlines()

        # # Write file
        write_line = True
        with open(OUTPUTFILENAME, 'w', encoding="utf-8") as fp:
            # iterate each line
            for number, line in enumerate(lines):
                # delete line 5 and 8. or pass any Nth line you want to remove
                # note list index starts from 0
                if write_line is True:
                    fp.write(line)
                    # print(line)
                if "Below this line is automatically written" in line:
                    write_line = False

    else:
        print(f'''File does not exist - {OUTPUTFILENAME}''')

    # sys.exit(0)
    with open(INPUTFILENAME, encoding="utf-8") as json_file:

        data = json.load(json_file)

        with open(OUTPUTFILENAME, file_write_mode, encoding="utf-8") as outfile:
            sys.stdout = outfile # Change the standard output to the file we created.
            print(data['data']['getTerraform']['resource'])
            sys.stdout = original_stdout #


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
    
#!/usr/bin/env python3
import json
import sys

fileName=sys.argv[1]
print('file name:', fileName)



with open(fileName) as json_file:
    data = json.load(json_file)

    with open(fileName, 'w') as outfile:
        json.dump(data, outfile, indent=4)   
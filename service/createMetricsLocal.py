
from curses import meta
from importlib.metadata import metadata
import json
import pathlib
import subprocess
import sys
import re
import os
import textwrap
from argparse import ArgumentParser, HelpFormatter

class RawFormatter(HelpFormatter):
    def _fill_text(self, text, width, indent):
        return "\n".join([textwrap.fill(line, width) for line in textwrap.indent(textwrap.dedent(text), indent).splitlines()])

# https://github.com/googleapis/python-monitoring
# https://cloud.google.com/python/docs/reference/monitoring/latest/google.cloud.monitoring_v3.services.metric_service.MetricServiceClient#google_cloud_monitoring_v3_services_metric_service_MetricServiceClient_transport
# https://cloud.google.com/monitoring/api/metrics#metadata
# https://cloud.google.com/monitoring/api/metrics_gcp#gcp-compute
# https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors#MetricDescriptor.FIELDS.unit
# https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors#metricdescriptormetadata

try:
    from google.cloud import monitoring_v3
except ImportError:
    subprocess.check_call([sys.executable, "-m", "pip", "install", 'google-cloud-monitoring'])
finally:
   from google.cloud import monitoring_v3


parseDescr=f'''
Get metric descriptors from google cloud and create local terraform variable file

example commands:
    python3 createMetricsLocal.py -p terraflood-345116 -m compute.googleapis.com -o compute/computemetrics.json -t compute/local_metricdescriptors.tf
    python3 createMetricsLocal.py -p terraflood-345116 -m cloudsql.googleapis.com -o cloudsql/cloudsqlmetrics.json -t cloudsql/local_metricdescriptors.tf


'''
# parse command line args
parser = ArgumentParser(description=parseDescr, formatter_class=RawFormatter)

parser.add_argument(

    "-o",
    "--output_file_name",
    dest="output_file_name",
    action="store",
    help="relative path of created json file",
    required=False,
    type=lambda p: pathlib.Path(p).absolute(),
    default="metricsdescriptorsresponse.json",

)

parser.add_argument(

    "-t",
    "--terraform_file_name",
    dest="terraform_file_name",
    action="store",
    help="relative path of exported terraform file",
    required=False,
    type=lambda p: pathlib.Path(p).absolute(),
    default="local_metricsdescriptors.tf",
)

parser.add_argument(

    "-v",
    "--terraform_local_variable_name",
    dest="terraform_local_variable_name",
    action="store",
    help="name  of terraform local variable",
    required=False,
    default="metrics_definitions",
)

parser.add_argument(
    "-p",
    "--projectId",
    dest="project_id",
    action="store",
    help="google project id ex. terraflood-345116",
    required=True,
)

parser.add_argument(
    "-m",
    "--metricFilter",
    dest="metric_filter",
    action="store",
    help="metrics to download ex. compute.googleapis.com",
    required=True
)


args = parser.parse_args()

filter = "metric.type = starts_with(\"{metric_namespace}/\")"

project = "projects/{projectid}"

print("Metric filter used to list metric descriptors - ", filter.format(metric_namespace = args.metric_filter))

print("Project ID used for api call - ", project.format(projectid = args.project_id))

print("Json output file name -", args.output_file_name)



def sample_list_metric_descriptors():
    # Create a client
    client = monitoring_v3.MetricServiceClient()

    # Initialize request argument(s)
    request = monitoring_v3.ListMetricDescriptorsRequest(
        name = project.format(projectid = args.project_id),
        filter = filter.format(metric_namespace = args.metric_filter),
    )

    # Make the request
    page_result = client.list_metric_descriptors(request=request)

    f = open(args.output_file_name, "w")

# #########
# #########
# name: "projects/terraflood-345116/metricDescriptors/compute.googleapis.com/quota/subnet_ranges_per_vpc_network/usage"
# type: "compute.googleapis.com/quota/subnet_ranges_per_vpc_network/usage"
# labels {
#   key: "limit_name"
#   description: "The limit name."
# }
# metric_kind: GAUGE
# value_type: INT64
# unit: "1"
# description: "Current usage on quota metric compute.googleapis.com/subnet_ranges_per_vpc_network."
# display_name: "Subnetwork ranges per VPC Network quota usage"
# launch_stage: GA
# monitored_resource_types: "compute.googleapis.com/VpcNetwork"

# projects/terraflood-345116/metricDescriptors/compute.googleapis.com/quota/subnet_ranges_per_vpc_network/usage
     
    daStuff ={ "metricDescriptors": []}

    # Handle the response
    for response in page_result:
        #print(response)
        def daLabel(resp):
            label = []
            for i in resp:
                label.append({
                    "key": i.key,
                    "description": i.description
                    })
            return label

        def daResouce(resp):
            resource = []
            for i in resp:
                resource.append(
                    i)
            return resource

        
        def daInterval(resp):
            return str(resp.sample_period.seconds)+"s"

        

        daStuff["metricDescriptors"].append(
            {
                "name": response.name,
                "type": response.type,
                "labels": daLabel(response.labels),
                "metric_kind": response.metric_kind,
                "value_type": response.value_type,
                "unit": response.unit,
                "description": response.description,
                "display_name": response.display_name,
                "launch_stage": response.launch_stage,
                "monitored_resource_types": daResouce(response.monitored_resource_types),
                "interval": daInterval(response.metadata)
            })
    
    f.write(json.dumps(daStuff, indent=4, sort_keys=True))
    f.close()

def create_terraform(fileName):

    # https://cloud.google.com/java/docs/reference/proto-google-common-protos/latest/com.google.api.MetricDescriptor.MetricKind
    def metric_kind_transform(kind):
        rtn_val=""

        if kind == 1:
             rtn_val='gauge'
        elif kind ==2: 
            rtn_val='delta'
        elif kind ==3:
            rtn_val='cumulativeCounter'
        else:
            rtn_val=f'BAD_VAL-{kind}'

        return rtn_val

    # https://cloud.google.com/java/docs/reference/proto-google-common-protos/latest/com.google.api.LaunchStage
    def launch_stage_transform(kind):
        rtn_val=""

        if kind == 4:
             rtn_val='GA'
        elif kind ==2: 
            rtn_val='ALPHA'
        elif kind ==3:
            rtn_val='BETA'
        else:
            rtn_val=f'BAD_VAL-{kind}'

        return rtn_val
    # https://cloud.google.com/java/docs/reference/proto-google-common-protos/latest/com.google.api.MetricDescriptor.ValueType
    def value_type(kind):
        rtn_val=""

        if kind == 1:
             rtn_val='BOOL'
        elif kind ==2: 
            rtn_val='INT64'
        elif kind ==3:
            rtn_val='DOUBLE'
        elif kind ==4:
            rtn_val='STRING'   
        elif kind ==5:
            rtn_val='DISTRIBUTION'   
        else:
            rtn_val=f'BAD_VAL-{kind}'

        return rtn_val
      

    ft = open(args.terraform_file_name, "w")

    ft.write(f'''
    ######################
    # This file is autogenerated
    # run createMetricsLocal.py in service directory to create this file
    # python3 createMetricsLocal.py -h for list of commands and options
    ######################
    locals {{ {args.terraform_local_variable_name} = {{
        ''')
    ft.close()

    ft = open(args.terraform_file_name, "a")

    with open(fileName) as data_file:    
        data = json.load(data_file)

        for metric in data['metricDescriptors']:
            # print ("name=", metric['name'])
            # print ("launch_stage=", metric['launch_stage'])
            metric_bin=""
            metric_category="none"

            splitStr=metric['name'].split("/")
            splitStrLength = len(splitStr)-4

            if splitStrLength==2:
                metric_bin=splitStr[4]
            
            elif splitStrLength==3:
                metric_bin=splitStr[4]
                metric_category=splitStr[5]

            def specificTags(val):
                # print(val)
                if "database" in val:
                    dbPlat = re.search('(?<=database/)([^/]+)', val).group()
                    # print(dbPlat)
                    if ("mysql" in dbPlat) or ("postgresql" in dbPlat) or ("sqlserver" in dbPlat):
                        return  f'dataBase = "{dbPlat}"'
                    else:
                        return 'dataBase = "ALL"'
                else:
                    return ""




            metric_name = re.search("[^\/]+$", metric['name'])
            googleMetricPath = re.search('(?<=metricDescriptors/)(.+)', metric['name'])

            print("googleMetricPath=", googleMetricPath)

            print("metric_name=", metric_name.group())

            daTF = f'''    {metric_name.group()} = {{
                type             = "{metric_kind_transform(metric['metric_kind'])}"
                description      = <<-EOF
                    {metric['description']}
                EOF
                launchStage      = "{launch_stage_transform(metric['launch_stage'])}"
                rollup           = "avg"
                aggregate        = "sum"
                metricCategory   = "{metric_category}"
                googleMetricPath = "{googleMetricPath.group()}"
                label            = "{metric['display_name']}"
                unit      = "{metric['unit']}"
                metricBin = "{metric_bin}"
                valuetype      = "{value_type(metric['value_type'])}"
                {specificTags(metric['name'])}
            }},
                '''

            #             daTF.format(metric_name = metric_name, 
            # metricKind = metric_kind_transform(metric['metric_kind']), 
            # launch_stage= launch_stage_transform(metric['launch_stage']), 
            # metric_bin= metric_bin)

            ft.write(daTF)
            

    
    

    # x = re.search("^The.*Spain$", txt)

    

    ft.write("}}")
    ft.close()

    tfFileDir = os.path.dirname(os.path.abspath(args.terraform_file_name))
    print("directory for terraform fmt = ", tfFileDir)
    tfCmd = f'terraform -chdir="{tfFileDir}" fmt'
    print("terraform cmd = ", tfCmd)
    os.system(tfCmd)

    # certain characters make terraform explode
    # This tends to be super painful to debug export TF_LOG=DEBUG; terraform apply might help
    sedCmd=f'sed -i\'\' -e \'s/>/greater than/g; s/(//g; s/)//g; s/&/and/g;\' "{args.terraform_file_name}"'
    print("sed cmd = ", sedCmd)
    os.system(sedCmd)

    tfCmd = f'terraform -chdir="{tfFileDir}" validate'
    print("terraform cmd = ", tfCmd)
    os.system(tfCmd)
sample_list_metric_descriptors()
create_terraform(args.output_file_name)

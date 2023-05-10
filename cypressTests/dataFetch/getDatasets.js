// to run this file export NODE_ENV=eng; node getDatasets.js
const fetch = require("node-fetch");
const base64 = require("base-64");
require('dotenv').config({ path: `.env.${process.env.NODE_ENV}` })

const { OBSERVE_CUSTOMER_ID, BEARER_TOKEN, OBSERVE_BASE_DOMAIN, OBSERVE_ADMIN_EMAIL, OBSERVE_ADMIN_PASSWORD} = process.env
console.log("CUSTOMER_ID - ", OBSERVE_CUSTOMER_ID)
const fs = require('fs');

const getBearerToken = async () => {

    return await fetch(`https://${OBSERVE_CUSTOMER_ID}.${OBSERVE_BASE_DOMAIN}/v1/login`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            // "Authorization": "Basic " + base64.encode(OBSERVE_ADMIN_EMAIL + ":" + OBSERVE_ADMIN_PASSWORD),
        },
        body: JSON.stringify({
            "user_email":OBSERVE_ADMIN_EMAIL, 
            "user_password":OBSERVE_ADMIN_PASSWORD
        })

    }).then(async r => {
        json_r = await r.json()
        const { access_key } = json_r
        console.log(access_key)
        return access_key
    })
}


const GetData = async () => {
    console.log('#########################')
    console.log('making api call')

    const TOKEN = await getBearerToken()
    
    await fetch(`https://${OBSERVE_CUSTOMER_ID}.${OBSERVE_BASE_DOMAIN}/v1/meta`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            "Authorization": `Bearer ${OBSERVE_CUSTOMER_ID} ${TOKEN}`,

        },
        body: JSON.stringify({
            query: `
    query datasets {
        datasetSearch(labelMatches:["GCP/"]){
          dataset {
            id
            name
            kind
            label
            workspaceId
            interfaces {
                path
                mapping {
                  interfaceField
                  field
                }
            }
          }
        }
      }

    `})
    })
        .then(r => {
            console.log(r)
            return r.json()
        })
        .then(data => {
            console.log('#########################')

            let events_file = []
            let resources_file = []

            datasets = data.data.datasetSearch;

            let count = 0;

            events_data_raw = datasets.filter(dataset => { console.log(dataset.dataset); return dataset.dataset.kind === "Event"} )
            events_data_raw.forEach(dataset => {dataset.dataset.name = dataset.dataset.label; events_file.push(dataset.dataset)})
            fs.writeFileSync('../gcp/data/events.json', JSON.stringify(events_file, null, 2), 'utf-8');

            resource_data_raw = datasets.filter(dataset => { console.log(dataset.dataset); return dataset.dataset.kind === "Resource"} )
            resource_data_raw.forEach(dataset => {dataset.dataset.name = dataset.dataset.label; resources_file.push(dataset.dataset)})
            fs.writeFileSync('../gcp/data/resources.json', JSON.stringify(resources_file, null, 2), 'utf-8');



        })

        await fetch(`https://${OBSERVE_CUSTOMER_ID}.${OBSERVE_BASE_DOMAIN}/v1/meta`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            "Authorization": `Bearer ${OBSERVE_CUSTOMER_ID} ${TOKEN}`,

        },
        body: JSON.stringify({
            query: `
            query DashboardSearch {
                dashboardSearch(terms: {name: ["GCP"]}) {
                  dashboards {
                    dashboard {
                      name
                      id
                    }
                  }
                }
              }
    `})
    })
        .then(r => {
            console.log(r)
            return r.json()
        })
        .then(data => {
            console.log('#########################')

            let monitoring_file = []
            let instance_file = []
        
            dashboards = data.data.dashboardSearch.dashboards;

            console.log(dashboards)

            // "kind": "Dashboard"
            dashboards_data_raw = dashboards.filter(dashboard => { console.log(dashboard.dashboard); return dashboard.dashboard.name.includes('Monitoring')} )
            dashboards_data_raw.forEach(dashboard => {dashboard.dashboard.kind = "Dashboard"; monitoring_file.push(dashboard.dashboard)})
            fs.writeFileSync('../gcp/data/monitoring.json', JSON.stringify(monitoring_file, null, 2), 'utf-8');

            dashboards_data_raw = dashboards.filter(dashboard => { console.log(dashboard.dashboard); return dashboard.dashboard.name.includes('Instance')} )
            dashboards_data_raw.forEach(dashboard => {dashboard.dashboard.kind = "Dashboard"; instance_file.push(dashboard.dashboard)})
            fs.writeFileSync('../gcp/data/instance.json', JSON.stringify(instance_file, null, 2), 'utf-8');


        })
}

module.exports = GetData

GetData()


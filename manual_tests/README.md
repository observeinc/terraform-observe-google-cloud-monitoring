bash
```
gcloud auth login
gcloud config set project $PROJECT_ID
gcloud config set project $PROJECT_ID
./list_resources.sh
```

[cloudquery](https://www.cloudquery.io/docs/quickstart)
```
export PROJECT_ID=yourproject
gcloud auth login
gcloud auth application-default login
gcloud config set project $PROJECT_ID
./list_resources.sh
cloudquery sync cloudquery.yaml

```
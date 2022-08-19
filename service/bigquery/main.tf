locals{
    enable_metrics = lookup(var.feature_flags, "metrics", true)
    freshness = merge({
        bigquery = "5m",
        metrics  = "1m",
        logging  = "1m",
  }, var.freshness_overrides)

  bigquery_project = jsondecode(templatefile("${path.module}/dashboards/BigQueryOverview.json",{
    dataset_bigquery_bigquery_logs        = observe_dataset.bigquery_job_logs.id
    dataset_bigquery_bigquery_metrics = observe_dataset.bigquery_metrics[0].id
    dataset_bigquery_projects = var.google.projects.id
  }))
    bigquery_dataset = jsondecode(templatefile("${path.module}/dashboards/BigQueryDataset.json",{
    # dataset_bigquery_project = var.google.projects.id
    # dataset_bigquery_bigquery_logs        = observe_dataset.bigquery_job_logs.id
    dataset_bigquery_bigquery_metrics = observe_dataset.bigquery_metrics[0].id
    dataset_bigquery_bigquery_dataset = observe_dataset.bigquery_dataset.id
  }))
      bigquery_singleton = jsondecode(templatefile("${path.module}/dashboards/BigQuerySingleton.json",{
    # dataset_bigquery_project = var.google.projects.id
    # dataset_bigquery_bigquery_logs        = observe_dataset.bigquery_job_logs.id
    dataset_bigquery_bigquery_metrics = observe_dataset.bigquery_metrics[0].id
    dataset_bigquery_bigquery_job_logs = observe_dataset.bigquery_job_logs.id
    dataset_bigquery_projects = var.google.projects.id
  }))

}
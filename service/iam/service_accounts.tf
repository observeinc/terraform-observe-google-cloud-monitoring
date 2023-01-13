locals {
  freshness = merge({
    service_accounts = "5m",
    metrics          = "1m",
    logging          = "1m",
  }, var.freshness_overrides)
}

resource "observe_dataset" "service_accounts" {
  workspace   = var.workspace.oid
  name        = format(var.name_format, "Service Accounts")
  freshness   = lookup(local.freshness, "service_accounts", var.freshness_default_duration)
  description = "This dataset is used to create the Compute Instance Groups Resource Instances"

  inputs = {
    "events" = var.google.pubsub_events.oid
  }

  # Upstream data: https://github.com/observeinc/google-cloud-functions/pull/2
  stage {
    pipeline = <<-EOF
      filter attributes.observe_gcp_kind = "https://cloud.google.com/iam/docs/reference/rest/v1/projects.serviceAccounts"
      make_col data2: parse_json(data)
      make_col etag:string(data2.account.etag),
        oauth2ClientId:string(data2.account.oauth2ClientId),
        project_id:string(data2.account.projectId),
        service_account_email:string(data2.account.email),
        service_account_id:string(data2.account.uniqueId),
        service_account_name:string(data2.account.name),
        time:BUNDLE_TIMESTAMP,
        ttl: 15m
    EOF
  }

  stage {
    pipeline = <<-EOF
        extract_regex service_account_name, /serviceAccounts\/(?P<short_name>[^\/]+)/

        set_valid_from options(max_time_diff:${var.max_time_diff}), time
  EOF
  }

  stage {
    pipeline = <<-EOF
        make_resource 
            project_id,
            short_name,
            service_account_name,
            service_account_email,
            etag,
            oauth2ClientId,
            primary_key(service_account_id),
            valid_for(ttl)



      EOF
  }
}

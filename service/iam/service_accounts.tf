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
  freshness   = lookup(var.freshness_overrides, "service_accounts", var.freshness_duration_default)
  description = "This dataset is used to create the Compute Instance Groups Resource Instances"

  inputs = {
    "events" = var.google.pubsub_events.oid
  }
  stage {
    pipeline = <<-EOF
        filter attributes.OBSERVATION_KIND = "gcpServiceAccount"

        make_col data2: parse_json(data)
            
        flatten_single data2

        make_col etag:string(_c_data2_value.etag),
            oauth2ClientId:string(_c_data2_value.oauth2ClientId),
            project_id:string(_c_data2_value.project_id),
            service_account_email:string(_c_data2_value.service_account_email),
            service_account_id:string(_c_data2_value.service_account_id),
            service_account_name:string(_c_data2_value.service_account_name),
            time:BUNDLE_TIMESTAMP,
            ttl: 15m

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

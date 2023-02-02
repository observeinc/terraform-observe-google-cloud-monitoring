locals {
  override_keys = keys(local.metrics_definitions_overrides)
  # if local.metrics_definitions has an overide value in local.metrics_definitions_overrides then use value from local.metrics_definitions_overrides
  merged_metrics_definitions = { for key1, value1 in local.metrics_definitions : # loop
    key1 => {
      for key2, value2 in value1 :
      key2 => contains(local.override_keys, key1) ?                     # check if metric key in override map
      contains(keys(local.metrics_definitions_overrides[key1]), key2) ? # check if property in override map for given key
      local.metrics_definitions_overrides[key1][key2] : value2          # use if present otherwise use existing
      : value2                                                          # otherwise use existing
    }
  }



  metrics_definitions_overrides = {
    cpu_utilization = {
      rollup = "rate"
      unit   = "second"
    }
  }
}


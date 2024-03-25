resource "azurerm_traffic_manager_nested_endpoint" "traffic_manager_nested_endpoint" {
  for_each                = local.traffic_manager_nested_endpoint
  name                    = each.value.name
  profile_id              = var.traffic_manager_profile_output[each.value.traffic_manager_profile_name].id
  weight                  = each.value.weight
  target_resource_id      = each.value.target_resource_id
  minimum_child_endpoints = each.value.minimum_child_endpoints
  
  }

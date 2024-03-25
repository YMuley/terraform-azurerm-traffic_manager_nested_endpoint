locals {
  traffic_manager_nested_endpoint = { for traffic_manager_nested_endpoint in var.traffic_manager_nested_endpoint_list : traffic_manager_nested_endpoint.name => traffic_manager_nested_endpoint }
}

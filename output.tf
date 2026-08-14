// Root outputs exposing module-created resources
output "resource_group_names" {
  description = "Map of resource group keys to names"
  value       = { for k, m in module.resource_group : k => m.name }
}

output "resource_group_ids" {
  description = "Map of resource group keys to resource ids"
  value       = { for k, m in module.resource_group : k => m.id }
}

output "resource_group_locations" {
  description = "Map of resource group keys to locations"
  value       = { for k, m in module.resource_group : k => m.location }
}

output "virtual_network_names" {
  description = "Map of vnet keys to names"
  value       = { for k, m in module.virtual_network : k => m.name }
}

output "virtual_network_ids" {
  description = "Map of vnet keys to resource ids"
  value       = { for k, m in module.virtual_network : k => m.id }
}


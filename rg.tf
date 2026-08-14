// Create resource groups using the `resource-group` module and a `for_each` map
module "resource_group" {
  source = "./modules/resource-group"
  for_each = local.resource_groups

  name     = each.value.name
  location = each.value.location
}

// Create virtual networks using the `virtual-network` module and a `for_each` map
module "virtual_network" {
  source = "./modules/virtual-network"
  for_each = local.virtual_networks

  name                = each.value.name
  location            = module.resource_group[each.value.resource_group_key].location
  resource_group_name = module.resource_group[each.value.resource_group_key].name
  address_space       = each.value.address_space
}


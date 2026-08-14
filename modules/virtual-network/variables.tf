variable "name" {
	description = "Virtual network name"
	type        = string
}

variable "location" {
	description = "Location for the virtual network"
	type        = string
}

variable "resource_group_name" {
	description = "Name of the resource group to create the VNet in"
	type        = string
}

variable "address_space" {
  description = "List of address spaces for the VNet"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to the vnet"
  type        = map(string)
  default     = {}
}


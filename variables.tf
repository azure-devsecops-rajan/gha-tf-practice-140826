variable "rg_name" {
  description = "Name of the resource group for this environment."
  type        = string
  default     = ""
}

variable "location" {
  description = "Azure region for the resource group and VNet."
  type        = string
  default     = "West Europe"
}

variable "vnet_name" {
  description = "Name of the virtual network for this environment."
  type        = string
  default     = ""
}

variable "address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
  default     = []
}

locals {
  resource_groups = {
    rg = {
      name     = var.rg_name
      location = var.location
    }
  }

  virtual_networks = {
    vnet = {
      name               = var.vnet_name
      resource_group_key = "rg"
      address_space      = var.address_space
    }
  }
}


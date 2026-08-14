variable "name" {
	description = "Resource Group name"
	type        = string
}

variable "location" {
	description = "Azure location for the resource group"
	type        = string
}

variable "tags" {
	description = "Tags to apply to the resource group"
	type        = map(string)
	default     = {}
}


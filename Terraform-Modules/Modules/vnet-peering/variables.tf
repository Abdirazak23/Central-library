variable "hub_vnet_name" {
  type        = string
  description = "The name of the Hub Virtual Network."
}

variable "hub_rg_name" {
  type        = string
  description = "The name of the Resource Group containing the Hub VNet."
}

variable "hub_vnet_id" {
  type        = string
  description = "The resource ID of the Hub Virtual Network."
}

variable "vnet_name_spoke" {
  type        = string
  description = "The name of the Spoke Virtual Network."
}

variable "spoke-vnet-rg" {
  type        = string
  description = "The name of the Resource Group containing the Spoke VNet."
}

variable "vnet_name_spoke_id" {
  type        = string
  description = "The resource ID of the Spoke Virtual Network."
}
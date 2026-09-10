variable "hub_vnet_name" {
  type        = string
  description = "The name of the Hub Virtual Network."
}

variable "hub_rg_name" {
  type        = string
  description = "The name of the Resource Group containing the Hub VNet."
}

variable "spoke_rg_name" {
  type        = string
  description = "The name of the Resource Group containing the Spoke VNet."
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

variable "spoke_vnet_id" {
  type        = string
  description = "The resource ID of the Spoke Virtual Network."
}

variable "environment" {
  type        = string
  description = "The environment for the resources (e.g., dev, test, prod)."
}

variable "use_case" {
  type        = string
  description = "The use case for the resources (e.g., web, db, app)."
}

variable "spoke_vnet_name" {
  type        = string
  description = "The name of the Spoke Virtual Network."
}
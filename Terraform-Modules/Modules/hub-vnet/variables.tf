variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for the hub network."
}

variable "location" {
  type        = string
  description = "The Azure region where resources will be created."
}

variable "vnet_name" {
  type        = string
  description = "hub"
}

variable "gateway_name" {
  type        = string
  description = "GW"
}

variable "subnet_name" {
  type        = string
  description = "SU"
}

variable "address_space" {
  type        = list(string)
  description = "The address space for the hub virtual network."
}

variable "gateway_subnet_prefix" {
  type        = string
  description = "The address prefix for the VPN/ExpressRoute gateway subnet."
}

variable "firewall_subnet_prefix" {
  type        = string
  description = "The address prefix for the Azure Firewall subnet."
}

variable "management_subnet_prefix" {
  type        = string
  description = "The address prefix for the management subnet."
}
variable "hub-vnet-rg" {
  type        = string
  description = "Name component for the hub resource group"
}

variable "location" {
  type        = string
  description = "The Azure region where resources will be created."
}

variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network."
}

variable "gateway_name" {
  type        = string
  description = "The name of the VPN/ExpressRoute Gateway."
}

variable "subnet_name" {
  type        = string
  description = "The name of the Subnet."
}

variable "address_space" {
  type        = string
  description = "The address space for the Virtual Network."
}

variable "gateway_subnet_prefix" {
  type        = string
  description = "Address prefix for the GatewaySubnet."
}

variable "firewall_subnet_prefix" {
  type        = string
  description = "Address prefix for the AzureFirewallSubnet."
}

variable "management_subnet_prefix" {
  type        = string
  description = "Address prefix for the Management Subnet."
}
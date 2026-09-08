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
  type        = list(string)
  description = "The address space for the Virtual Network."
}

variable "gateway_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the GatewaySubnet."
}

variable "firewall_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the AzureFirewallSubnet."
}

variable "management_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the Management Subnet."
}

variable "environment" {
  type        = string
  description = "The environment for the resources (e.g., dev, test, prod)."
}

variable "use_case" {
  type        = string
  description = "The use case for the resources (e.g., web, db, app)."
}
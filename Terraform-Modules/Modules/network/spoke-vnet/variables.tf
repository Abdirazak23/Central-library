variable "spoke-vnet-rg" {
  type        = string
  description = "Name component for the spoke resource group"
}

variable "location" {
  type        = string
  description = "The Azure region where resources will be created."
}

variable "vnet_name_spoke" {
  type        = string
  description = "The name of the Virtual Network."
}

variable "address_space_spoke" {
  type        = list(string)
  description = "The address space for the Virtual Network."
}

variable "subnet01_prefix" {
  type        = list(string)
  description = "Address prefix for the Subnet."
}

variable "subnet02_prefix" {
  type        = list(string)
  description = "Address prefix for the Subnet."
}

variable "subnet01_name" {
  type        = string
  description = "The name of the Subnet."
}

variable "subnet02_name" {
  type        = string
  description = "The name of the Subnet."
}
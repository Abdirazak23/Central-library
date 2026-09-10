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

variable "Container-subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the Subnet."
}

variable "Data-subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the Subnet."
}

variable "Container-subnet" {
  type        = string
  description = "The name of the Subnet."
}

variable "Data-subnet" {
  type        = string
  description = "The name of the Subnet."
}

variable "environment" {
  type        = string
  description = "The environment for the resources (e.g., dev, test, prod)."
}

variable "use_case_spoke" {
  type        = string
  description = "The use case for the resources (e.g., web, db, app)."
}

variable "use_case_subnet" {
  type        = string
  description = "The use case for the resources (e.g., web, db, app)."
}

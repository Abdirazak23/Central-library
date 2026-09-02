variable "hub_vnet_rg_name" {
  type        = string
  description = "vnet"
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
  value = ["10.0.0.0/16"]
}

variable "gateway_subnet_prefix" {
  type        = string
  value = ["10.0.0.0/27"]
  }

variable "firewall_subnet_prefix" {
  type        = string
  value = ["10.0.0.32/27"]
  }

variable "management_subnet_prefix" {
  type        = string
  value = ["10.0.0.64/27"]
}
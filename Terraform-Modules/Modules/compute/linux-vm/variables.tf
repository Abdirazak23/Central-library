variable "prefix" {
  description = "The Prefix used for all resources in this example"
}

variable "location" {
  type        = string
  description = "The Azure region where resources will be created."
}

variable "linux_vm_name" {
  type        = string
  description = "Name for the Linux VM"
}

variable "use_case_vm" {
  type        = string
  description = "Use case for the Linux VM"
}

variable "environment" {
  type        = string
  description = "The environment for the resources (e.g., dev, test, prod)."
}

variable "admin_username" {
  type        = string
  description = "The admin username for the Linux VM."
  default     = "Test-User"
}

variable "vm_size" {
  type        = string
  description = "The size of the Linux VM."
  default     = "Standard_B2s"
}

variable "ssh_public_key" {
  type        = string
  description = "Public SSH key string for VM authentication"
}

variable "ssh_private_key" {
  type        = string
  description = "Private SSH key string used by remote-exec provisioner"
  sensitive   = true
}

variable "network_interface_name" {
  type        = string
  description = "The name of the network interface for the Linux VM."
}
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

variable "vm_usecase" {
  type        = string
  description = "Use case for the Linux VM"
}

variable "environment" {
  type        = string
  description = "The environment for the resources (e.g., dev, test, prod)."
}

variable "use_case" {
  type        = string
  description = "The use case for the resources (e.g., web, db, app)."
}

variable "admin_username" {
  type        = string
  description = "The admin username for the Linux VM."
  default     = "Test-User"
}

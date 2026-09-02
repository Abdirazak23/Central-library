resource "azurerm_resource_group" "linux-vm-rg" {
  name     = "linux-vm-${var.vm_name}-rg01"
  location = var.location
}
resource "azurerm_resource_group" "spoke-vnet-rg" {
  name     = "spoke-${var.spoke-vnet-rg}-rg01"
  location = var.location
}

resource "azurerm_virtual_network" "spoke-vnet" {
  name                = "spoke-${var.vnet_name}01"
  address_space       = var.address_space
  location            = azurerm_resource_group.spoke-vnet-rg.location
  resource_group_name = azurerm_resource_group.spoke-vnet-rg.name
}

resource "azurerm_subnet" "subnet01" {
  name                 = var.subnet01_name
  resource_group_name  = azurerm_resource_group.spoke-vnet-rg.name
  virtual_network_name = azurerm_virtual_network.spoke-vnet.name
  address_prefixes     = var.subnet01_prefix
}

resource "azurerm_subnet" "subnet02" {
  name                 = var.subnet02_name
  resource_group_name  = azurerm_resource_group.spoke-vnet-rg.name
  virtual_network_name = azurerm_virtual_network.spoke-vnet.name
  address_prefixes     = var.subnet02_prefix
}

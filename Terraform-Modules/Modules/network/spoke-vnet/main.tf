resource "azurerm_resource_group" "spoke-vnet-rg" {
  name     = "${var.environment}-${var.use_case_spoke}-rg01"
  location = var.location
}

resource "azurerm_virtual_network" "vnet_name_spoke" {
  name                = "${var.environment}-vnet-${var.use_case_spoke}-01"
  address_space       = var.address_space_spoke
  location            = azurerm_resource_group.spoke-vnet-rg.location
  resource_group_name = azurerm_resource_group.spoke-vnet-rg.name
}

resource "azurerm_subnet" "Container-subnet" {
  name                 = "${var.environment}-Cont-${var.use_case_subnet}-01"
  resource_group_name  = azurerm_resource_group.spoke-vnet-rg.name
  virtual_network_name = azurerm_virtual_network.vnet_name_spoke.name
  address_prefixes     = var.Container-subnet_prefix
}

resource "azurerm_subnet" "Data-subnet" {
  name                 = "${var.environment}-Data-${var.use_case_subnet}-01"
  resource_group_name  = azurerm_resource_group.spoke-vnet-rg.name
  virtual_network_name = azurerm_virtual_network.vnet_name_spoke.name
  address_prefixes     = var.Data-subnet_prefix
}

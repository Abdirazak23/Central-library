resource "azurerm_resource_group" "hub-vnet-rg" {
  name     = "${var.environment}-${var.use_case}-rg01"
  location = var.location
}

resource "azurerm_virtual_network" "hub-vnet" {
  name                = "${var.environment}-vnet-${var.use_case_hub}-01"
  address_space       = var.address_space
  location            = azurerm_resource_group.hub-vnet-rg.location
  resource_group_name = azurerm_resource_group.hub-vnet-rg.name
}

resource "azurerm_subnet" "gateway_subnet" {
  name                 = "${var.environment}-GW-${var.use_case_subnet}-01"
  resource_group_name  = azurerm_resource_group.hub-vnet-rg.name
  virtual_network_name = azurerm_virtual_network.hub-vnet.name
  address_prefixes     = var.gateway_subnet_prefix
}

resource "azurerm_subnet" "firewall_subnet" {
  name                 = "${var.environment}-FW-${var.use_case_subnet}-01"
  resource_group_name  = azurerm_resource_group.hub-vnet-rg.name
  virtual_network_name = azurerm_virtual_network.hub-vnet.name
  address_prefixes     = var.firewall_subnet_prefix
}

resource "azurerm_subnet" "management_subnet" {
  name                 = "${var.environment}-MGMT-${var.use_case_subnet}-01"
  resource_group_name  = azurerm_resource_group.hub-vnet-rg.name
  virtual_network_name = azurerm_virtual_network.hub-vnet.name
  address_prefixes     = var.management_subnet_prefix
}
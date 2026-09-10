resource "azurerm_virtual_network_peering" "hub-to-spoke" {
  name                         = "hub-to-spoke"
  resource_group_name          = var.hub_rg_name
  virtual_network_name         = var.hub_vnet_name
  remote_virtual_network_id    = var.spoke_vnet_id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true  # Allows traffic to other spokes
  use_remote_gateways          = false # Only set to true if Spoke should use Hub's gateway
}

resource "azurerm_virtual_network_peering" "spoke-to-hub" {
  name                         = "spoke-to-hub"
  resource_group_name          = var.spoke_rg_name
  virtual_network_name         = var.spoke_vnet_name
  remote_virtual_network_id    = var.hub_vnet_id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true # Allows traffic to other spokes
  use_remote_gateways          = true # Only set to true if Spoke should use Hub's gateway
}
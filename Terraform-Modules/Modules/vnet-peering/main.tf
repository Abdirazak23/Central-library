resource "azurestack_virtual_network_peering" "hub-to-spoke" {
  name                         = "hub-to-spoke"
  resource_group_name          = azurestack_resource_group.hub-vnet-rg.name
  virtual_network_name         = azurestack_virtual_network.hub-vnet.name
  remote_virtual_network_id    = azurestack_virtual_network.vnet_name_spoke.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true # Allows traffic to other spokes
  use_remote_gateways          = false # Only set to true if Spoke should use Hub's gateway
}

resource "azurestack_virtual_network_peering" "spoke-to-hub" {
  name                         = "spoke-to-hub"
  resource_group_name          = azurestack_resource_group.spoke-vnet-rg.name
  virtual_network_name         = azurestack_virtual_network.vnet_name_spoke.name
  remote_virtual_network_id    = azurestack_virtual_network.hub-vnet.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true # Allows traffic to other spokes
  use_remote_gateways          = true # Only set to true if Spoke should use Hub's gateway
}
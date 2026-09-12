output "hub_to_spoke_peering_id" {
  value       = azurerm_virtual_network_peering.hub_to_spoke.id
  description = "The ID of the peering from Hub to Spoke."
}

output "spoke_to_hub_peering_id" {
  value       = azurerm_virtual_network_peering.spoke_to_hub.id
  description = "The ID of the peering from Spoke to Hub."
}

output "hub_rg_name" {
  description = "The resource group name of the hub network"
  value       = azurerm_resource_group.rg.name # Use the actual resource group identifier from inside this module
}
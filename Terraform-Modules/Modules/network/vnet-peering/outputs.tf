output "hub_to_spoke_peering_id" {
  description = "The ID of the Hub to Spoke VNet Peering."
  value       = azurerm_virtual_network_peering.hub-to-spoke.id
}

output "spoke_to_hub_peering_id" {
  description = "The ID of the Spoke to Hub VNet Peering."
  value       = azurerm_virtual_network_peering.spoke-to-hub.id
}
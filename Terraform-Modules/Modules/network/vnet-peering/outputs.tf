output "hub_to_spoke_peering_id" {
  description = "The ID of the Hub to Spoke VNet Peering."
  value       = azurerm_virtual_network_peering.peering_hub_to_spoke.id # Ensure this matches your main.tf resource name
}

output "spoke_to_hub_peering_id" {
  description = "The ID of the Spoke to Hub VNet Peering."
  value       = azurerm_virtual_network_peering.peering_spoke_to_hub.id # Ensure this matches your main.tf resource name
}
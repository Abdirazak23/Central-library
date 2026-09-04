output "vnet_id" {
  value       = azurerm_virtual_network.hub-vnet.id
  description = "The ID of the hub virtual network."
}

output "vnet_name" {
  value       = azurerm_virtual_network.hub-vnet.name
  description = "The name of the hub virtual network."
}
output "vnet_id" {
  value       = azurerm_virtual_network.hub-vnet.id
  description = "The ID of the hub virtual network."
}

output "vnet_name" {
  value       = azurerm_virtual_network.hub-vnet.name
  description = "The name of the hub virtual network."
}

output "gateway_subnet_id" {
  value       = azurerm_subnet.gateway_subnet.id
  description = "The ID of the GatewaySubnet."
}

output "firewall_subnet_id" {
  value       = azurerm_subnet.firewall_subnet.id
  description = "The ID of the AzureFirewallSubnet."
}

output "management_subnet_id" {
  value       = azurerm_subnet.management_subnet.id
  description = "The ID of the management subnet."
}
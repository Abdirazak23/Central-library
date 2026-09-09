output "vnet_id" {
  value       = azurerm_virtual_network.vnet_name_spoke.id
  description = "The ID of the spoke virtual network."
}

output "vnet_name_spoke" {
  value       = azurerm_virtual_network.vnet_name_spoke.name
  description = "The name of the spoke virtual network."
}

output "Container_subnet_id" {
  value       = azurerm_subnet.Container-subnet.id
  description = "The ID of the Container subnet."
}

output "Data_subnet_id" {
  value       = azurerm_subnet.Data-subnet.id
  description = "The ID of the Data subnet."
}
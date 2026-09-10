output "linux_vm_id" {
  value       = azurerm_linux_virtual_machine.linux-vm.id
  description = "The ID of the Linux VM."
}

output "linux_vm_name" {
  value       = azurerm_linux_virtual_machine.linux-vm.name
  description = "The name of the Linux VM."
}

output "linux_vm_resource_group" {
  value       = azurerm_linux_virtual_machine.linux-vm.resource_group_name
  description = "The resource group of the Linux VM."
}
output "network_interface_id" {
  value       = azurerm_network_interface.linux-vm-nic.id
  description = "The ID of the network interface attached to the Linux VM."
}
output "network_interface_name" {
  value       = azurerm_network_interface.linux-vm-nic.name
  description = "The name of the network interface attached to the Linux VM."
}

resource "azurerm_resource_group" "linux-vm-rg" {
  name     = "${var.environment}-${var.use_case}-rg01"
  location = var.location
}

resource "azurerm_virtual_machine" "linux-vm" {
  name                  = "${var.environment}-vm-${var.use_case}-01"
  location              = azurerm_resource_group.linux-vm-rg.location
  resource_group_name   = azurerm_resource_group.linux-vm-rg.name
  network_interface_ids = [azurerm_network_interface.linux-vm-nic.id]
  vm_size               = "Standard_B2"

  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  storage_os_disk {
    name              = "${var.prefix}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = local.virtual_machine_name
    admin_username = local.admin_username
    admin_password = local.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = true
  }

  admin_ssh_key {
    username   = "var.admin_username"
    public_key = var.ssh_public_key # e.g., "ssh-rsa AAAAB3NzaC1yc2EAAAADAQAB..."
  }

  provisioner "remote-exec" {
    connection {
      user     = local.admin_username
      password = local.admin_password
    }

    inline = [
      "ls -la",
    ]
  }
}
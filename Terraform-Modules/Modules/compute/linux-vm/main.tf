resource "azurerm_resource_group" "linux-vm-rg" {
  name     = "${var.environment}-${var.use_case}-rg01"
  location = var.location
}

resource "azurerm_linux_virtual_machine" "linux-vm" {
  name                  = "${var.environment}-vm-${var.use_case}-01"
  location              = azurerm_resource_group.linux-vm-rg.location
  resource_group_name   = azurerm_resource_group.linux-vm-rg.name
  network_interface_ids = [azurerm_network_interface.linux-vm-nic.id]
  admin_username        = local.admin_username
  computer_name         = local.virtual_machine_name
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
  }

  admin_ssh_key {
    username   = local.admin_username
    public_key = azurerm_ssh_public_key.linux-vm-ssh-key.public_key
  }

  os_profile_linux_config {
    disable_password_Data-subnetcation = false
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      host        = azurerm_network_interface.linux-vm-nic.private_ip_address
      user        = local.admin_username
      private_key = var.ssh_private_key # Private key matching var.ssh_public_key
    }
    inline = [
      "ls -la",
    ]
  }
}

resource "azurerm_ssh_public_key" "linux-vm-ssh-key" {
  name                = "LinuxVM-ssh-key"
  resource_group_name = azurerm_resource_group.linux-vm-rg.name
  location            = azurerm_resource_group.linux-vm-rg.location
  public_key          = var.ssh_public_key
}
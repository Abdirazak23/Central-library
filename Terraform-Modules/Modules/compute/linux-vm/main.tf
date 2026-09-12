resource "azurerm_resource_group" "linux-vm-rg" {
  name     = "${var.environment}-${var.use_case_vm}-rg01"
  location = var.location
}

resource "azurerm_network_interface" "linux-vm-nic" {
  name                = "${var.environment}-${var.use_case_vm}-nic01"
  location            = azurerm_resource_group.linux-vm-rg.location
  resource_group_name = azurerm_resource_group.linux-vm-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id # Pass subnet_id as a variable to the module
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_ssh_public_key" "linux-vm-ssh-key" {
  name                = "LinuxVM-ssh-key"
  resource_group_name = azurerm_resource_group.linux-vm-rg.name
  location            = azurerm_resource_group.linux-vm-rg.location
  public_key          = var.ssh_public_key
}

# 2. Modernized azurerm_linux_virtual_machine block syntax
resource "azurerm_linux_virtual_machine" "linux-vm" {
  name                  = "${var.environment}-vm-${var.use_case_vm}-01"
  location              = azurerm_resource_group.linux-vm-rg.location
  resource_group_name   = azurerm_resource_group.linux-vm-rg.name
  size                  = var.vm_size
  admin_username        = var.admin_username
  network_interface_ids = [azurerm_network_interface.linux-vm-nic.id]

  admin_ssh_key {
    username   = var.admin_username
    public_key = azurerm_ssh_public_key.linux-vm-ssh-key.public_key
  }

  os_disk {
    name                 = "${var.prefix}-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      host        = azurerm_network_interface.linux-vm-nic.private_ip_address
      user        = var.admin_username
      private_key = var.ssh_private_key
    }
    inline = [
      "ls -la",
    ]
  }
}
resource "azurerm_linux_virtual_machine" "VM-OP" {
    name = var.VM_name
    resource_group_name = var.RG_name
    location = var.location
    size = var.size
    admin_username = var.admin_username
    admin_password = var.admin_password
    network_interface_ids = [var.nic_id]
    
    os_disk {
        caching = var.os_disk_caching
        storage_account_type = var.os_disk_storage_account_type
    }

    source_image_reference {
        publisher = var.os_image_publisher
        offer = var.os_image_offer
        sku = var.os_image_sku
        version = var.os_image_version
    }
}
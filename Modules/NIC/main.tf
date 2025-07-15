resource "azurerm_network_interface" "NIC-OP" {
    name = var.nic_name
    location = var.location
    resource_group_name = var.RG_name

    ip_configuration {
        name = var.ip_config_name
        subnet_id = var.subnet_id
        public_ip_address_id = var.pip_id
        private_ip_address_allocation = var.private_ip_address_allocation
    }
}
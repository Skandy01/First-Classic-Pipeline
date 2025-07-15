resource "azurerm_virtual_network" "vnet_op" {
    name = var.vnet_name
    address_space = var.address_space
    location = var.location
    resource_group_name = var.RG_name
}
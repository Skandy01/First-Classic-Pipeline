resource "azurerm_subnet" "subnet_op" {
    name = var.subnet_name
    resource_group_name = var.RG_name
    virtual_network_name = var.vnet_name
    address_prefixes = var.address_prefixes
}
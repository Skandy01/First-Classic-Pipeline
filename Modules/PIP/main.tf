resource "azurerm_public_ip" "PIP-OP" {
    name = var.pip_name
    location = var.location
    resource_group_name = var.RG_name
    allocation_method = var.allocation_method
}
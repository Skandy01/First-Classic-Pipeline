resource "azurerm_resource_group" "RG-OP" {
    name = var.RG_name
    location = var.location
}
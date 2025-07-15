resource "azurerm_key_vault" "KeyVault-OP" {
    name = var.KeyVault_name
    resource_group_name = var.RG_name
    location = var.location
    tenant_id = var.tenant_id
    sku_name = var.sku_name
    soft_delete_retention_days = var.soft_delete_retention_days
    purge_protection_enabled = var.purge_protection_enabled
    enabled_for_disk_encryption = var.enabled_for_disk_encryption
}
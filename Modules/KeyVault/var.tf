variable "RG_name" {
    description = "RG name"
    type = string
    default = "RG-OP"
}

variable "location" {
    description = "KV location"
    type = string
    default = "East US"
}

variable "KeyVault_name" {
    description = "KV name"
    type = string
    default = "Secret-OP"
}

variable "tenant_id" {
    description = "Tenant Id for KV"
    type = string 
}

variable "sku_name" {
    description = "sku name for KV"
    type = string
    default = "standard"
}

variable "soft_delete_retention_days" {
    description = "Soft Delete for KV"
    type = number
    default = 7
}

variable "purge_protection_enabled" {
    description = "Purge Prtect for KV"
    type = bool
    default = true
}

variable "enabled_for_disk_encryption" {
    description = "Disk Encrypt"
    type = bool
    default = true
}

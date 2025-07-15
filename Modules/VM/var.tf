variable "VM_name" {
    description = "VM name"
    type = string
    default = "VM-OP"
}

variable "RG_name" {
    description = "RG name"
    type = string
    default = "RG-OP"
}

variable "location" {
    description = "VM location"
    type = string
    default = "East US"
}

variable "size" {
    description = "VM size"
    type = string
    default = "Standard_DS1_v2"
}

variable "admin_username" {
    description = "Admin username"
    type = string
    default = "bhabya"
}

variable "admin_password" {
    description = "Admin password"
    type = string
    default = "P@ssw0rd!"
}

variable "os_disk_name" {
    description = "OS disk name"
    type = string
    default = "osdisk-op"
}

variable "os_disk_caching" {
    description = "OS disk caching"
    type = string
    default = "ReadWrite"
}

variable "os_disk_storage_account_type" {
    description = "STG type"
    type = string
    default = "Standard_LRS"
}

variable "os_image_publisher" {
    description = "OS img publisher"
    type = string
    default = "Canonical"
}

variable "nic_id" {
    description = "NIC ID"
    type = string
    default = "NIC-OP"
}

variable "os_image_offer" {
    description = "OS img offer"
    type = string
    default = "0001-com-ubuntu-server-jammy"
}

variable "os_image_sku" {
    description = "OS img SKU"
    type = string
    default = "22_04-lts"
}

variable "os_image_version" {
    description = "OS img version"
    type = string
    default = "latest"
}



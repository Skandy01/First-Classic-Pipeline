variable "RG_name" {
    description = "RG name"
    type = string
    
}

variable "location" {
    description = "VNet location"
    type = string
    
}

variable "vnet_name" {
    description = "vnet name"
    type = string
    
}

variable "address_space" {
    description = "address space for vnet"
    type = list(string)
    
}
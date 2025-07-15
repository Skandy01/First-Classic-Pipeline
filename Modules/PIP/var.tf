variable "RG_name" {
    description = "RG name"
    type = string
    default = "RG-OP"
}

variable "location" {
    description = "PIP location"
    type = string
    default = "East US"
}

variable "pip_name" {
    description = "public IP name"
    type = string
    default = "PIP-OP"
}

variable "allocation_method" {
    description = "allocation method for PIP"
    type = string
    default = "Dynamic"
}
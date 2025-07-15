variable "RG_name" {
    description = "RG name"
    type = string
    default = "RG-OP"
}
  
variable "vnet_name" {
    description = "vnet name"
    type = string
    default = "VNET-OP"
}

variable "subnet_name" {
    description = "subnet name"
    type = string
    default = "Subnet-OP"
}

variable "address_prefixes" {
    description = "address prefixes for subnet"
    type = list(string)
    default = ["10.0.0.0/24"]
}
variable "RGs" {
  description = "Map of RGs"
  type        = map(any)
}

variable "VNets" {
  description = "Map of VNets"
  type        = map(any)
}

variable "Subnets" {
  description = "Map of Subnets"
  type        = map(any)
}

variable "PIPs" {
  description = "Map of PIP"
  type        = map(any)
}

variable "NICs" {
  description = "Map of NICs"
  type = map(object({
    nic_name                      = string
    RG_name                       = string
    location                      = string
    ip_config_name                = string
    subnet_key                    = string
    pip_key                       = string
    private_ip_address_allocation = string
  }))
}

variable "VMs" {
  description = "Map of VMs"
  type        = map(any)
}
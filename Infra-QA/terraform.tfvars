RGs = {
  "RG_HR" = {
    RG_name  = "Infra-QA-RG"
    location = "West Europe"
  }
  "RG_Admin" = {
    RG_name  = "Infra-QA-RG_Ad"
    location = "West Europe"
  }
}

VNets = {
  "VNet_HR" = {
    vnet_name     = "Infra-QA-VNet"
    RG_name       = "Infra-QA-RG"
    location      = "West Europe"
    address_space = ["10.0.0.0/16"]
  }
  "VNet_Admin" = {
    vnet_name     = "Infra-QA-VNet_Ad"
    RG_name       = "Infra-QA-RG_Ad"
    location      = "West Europe"
    address_space = ["10.0.2.0/16"]
  }
}

Subnets = {
  "Subnet_HR" = {
    subnet_name = "Infra-QA-Subnet1"
    RG_name     = "Infra-QA-RG"
    vnet_name   = "Infra-QA-VNet"
  }
  "Subnet_Admin" = {
    subnet_name = "Infra-QA-Subnet2"
    RG_name     = "Infra-QA-RG"
    vnet_name   = "Infra-QA-VNet"
  }
}

PIPs = {
  "PIP_HR" = {
    pip_name          = "Infra-QA-PIP1"
    RG_name           = "Infra-QA-RG"
    location          = "West Europe"
    allocation_method = "Static"
  }
  "PIP_Admin" = {
    pip_name          = "Infra-QA-PIP2"
    RG_name           = "Infra-QA-RG"
    location          = "West Europe"
    allocation_method = "Static"
  }
}

NICs = {
  "NIC_HR" = {

    nic_name = "Infra-QA-NIC1"
    RG_name  = "Infra-QA-RG"
    location = "West Europe"

    ip_config_name                = "internal"
    subnet_key                    = "Subnet_HR"
    pip_key                       = "PIP_HR"
    private_ip_address_allocation = "Dynamic"

  }
  "NIC_Admin" = {

    nic_name = "Infra-QA-NIC2"
    RG_name  = "Infra-QA-RG"
    location = "West Europe"

    ip_config_name                = "internal"
    subnet_key                    = "Subnet_Admin"
    pip_key                       = "PIP_Admin"
    private_ip_address_allocation = "Dynamic"

  }
}

VMs = {
  "VM1" = {

    VM_name  = "Infra-QA-VM1"
    RG_name  = "Infra-QA-RG"
    location = "West Europe"
    size     = "Standard_DS1_v2"

    admin_username = "azureuser"
    admin_password = "P@ssw0rd1234!"
    nic_key        = "NIC_HR"

    os_disk_caching              = "ReadWrite"
    os_disk_storage_account_type = "Standard_LRS"
    os_image_offer               = "UbuntuServer"
    os_image_publisher           = "Canonical"
    os_image_sku                 = "18.04-LTS"
    os_image_version             = "latest"
  }
  "VM2" = {

    VM_name  = "Infra-QA-VM2"
    RG_name  = "Infra-QA-RG"
    location = "West Europe"
    size     = "Standard_DS1_v2"

    admin_username = "azureuser"
    admin_password = "P@ssw0rd1234!"
    nic_key        = "NIC_Admin"

    os_disk_caching              = "ReadWrite"
    os_disk_storage_account_type = "Standard_LRS"
    os_image_offer               = "UbuntuServer"
    os_image_publisher           = "Canonical"
    os_image_sku                 = "18.04-LTS"
    os_image_version             = "latest"

  }
}
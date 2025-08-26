module "RG" {
  source   = "../Modules/RG"
  for_each = var.RGs
  RG_name  = each.value.RG_name
  location = each.value.location
}

module "VNET" {
  depends_on    = [module.RG]
  source        = "../Modules/VNet"
  for_each      = var.VNets
  vnet_name     = each.value.vnet_name
  RG_name       = each.value.RG_name
  location      = each.value.location
  address_space = each.value.address_space
}

module "Subnet" {
  depends_on  = [module.VNET]
  source      = "../Modules/Subnet"
  for_each    = var.Subnets
  subnet_name = each.value.subnet_name
  RG_name     = each.value.RG_name
  vnet_name   = each.value.vnet_name
}

module "PIP" {
  depends_on = [module.Subnet]
  source     = "../Modules/PIP"
  for_each   = var.PIPs

  pip_name          = each.value.pip_name
  RG_name           = each.value.RG_name
  location          = each.value.location
  allocation_method = each.value.allocation_method

}

module "NIC" {

  depends_on = [module.Subnet, module.PIP]
  source     = "../Modules/NIC"
  for_each   = var.NICs

  nic_name = each.value.nic_name
  RG_name  = each.value.RG_name
  location = each.value.location

  ip_config_name                = each.value.ip_config_name
  subnet_id                     = data.azurerm_subnet.subnet_data[each.value.subnet_key].id
  pip_id                        = data.azurerm_public_ip.PIP_data[each.value.pip_key].id
  private_ip_address_allocation = each.value.private_ip_address_allocation

}

module "VM" {

  depends_on = [module.NIC, module.Subnet]
  source     = "../Modules/VM"
  for_each   = var.VMs

  VM_name  = each.value.VM_name
  RG_name  = each.value.RG_name
  location = each.value.location
  size     = each.value.size

  admin_username = each.value.admin_username
  admin_password = each.value.admin_password
  disable_password_authentication = false
  nic_id = data.azurerm_network_interface.NIC_data[each.value.nic_key].id

  os_disk_caching              = each.value.os_disk_caching
  os_disk_storage_account_type = each.value.os_disk_storage_account_type
  os_image_offer               = each.value.os_image_offer
  os_image_publisher           = each.value.os_image_publisher
  os_image_sku                 = each.value.os_image_sku
  os_image_version             = each.value.os_image_version

}

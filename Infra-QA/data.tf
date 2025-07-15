data "azurerm_subnet" "subnet_data" {
  for_each = var.Subnets
  depends_on = [
    module.Subnet["Subnet_HR"],
    module.Subnet["Subnet_Admin"]
  ]
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.RG_name
}

data "azurerm_public_ip" "PIP_data" {
  for_each = var.PIPs
  depends_on = [
    module.PIP["PIP_HR"],
    module.PIP["PIP_Admin"]
  ]
  name                = each.value.pip_name
  resource_group_name = each.value.RG_name
}

data "azurerm_network_interface" "NIC_data" {
  for_each = var.NICs
  depends_on = [
    module.PIP["PIP_HR"],
    module.PIP["PIP_Admin"],
    module.Subnet["Subnet_HR"],
    module.Subnet["Subnet_Admin"]
  ]
  name                = each.value.nic_name
  resource_group_name = each.value.RG_name
}

output "resource_group_name" {
  description = "Resource Group used for the deployment"
  value       = data.azurerm_resource_group.rg.name
}

output "location" {
  description = "Azure region of the deployment"
  value       = data.azurerm_resource_group.rg.location
}

output "vnet_name" {
  description = "Name of the deployed Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_names" {
  description = "Names of the deployed subnets"
  value       = [for subnet in azurerm_subnet.subnets : subnet.name]
}

output "nsg_name" {
  description = "Name of the deployed Network Security Group"
  value       = azurerm_network_security_group.web_nsg.name
}

output "vm_public_ip" {
  value = azurerm_public_ip.vm_pip.ip_address
}

output "vm_name" {
  value = azurerm_linux_virtual_machine.vm.name
}
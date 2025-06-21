output "vm_name_to_uppercase" {
  value = [for vm in azurerm_virtual_machine.main : upper(vm.name)]
}

output "joined_tags" {
  value = {
    for i, vm in azurerm_virtual_machine.main :
    i => join("-", values(vm.tags))
  }
}

output "vm_ids" {
  value = [for vm in azurerm_virtual_machine.main : vm.id]
}
# --------- AvailabilitySet ------------
resource "azurerm_availability_set" "availability_set" {
  for_each                     = local.availability_set
  name                         = each.value.name
  location                     = each.value.location
  resource_group_name          = var.resource_group_output[each.value.resource_group_name].name
  platform_fault_domain_count  = each.value.platform_fault_domain_count
  platform_update_domain_count = each.value.platform_update_domain_count
  managed                      = each.value.managed
  proximity_placement_group_id = var.proximity_placement_group_output[each.value.proximity_placement_group_name].id
  tags                         = each.value.tags == null ? var.default_values.tags : each.value.tags
}

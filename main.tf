data "oci_core_virtual_circuit_associated_tunnels" "core_virtual_circuit_associated_tunnels_lookup" {
  for_each = var.core_virtual_circuit_associated_tunnels_lookup

  virtual_circuit_id = each.value.virtual_circuit_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}


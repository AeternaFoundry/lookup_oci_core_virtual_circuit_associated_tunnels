output "core_virtual_circuit_associated_tunnels_lookup_id" {
  description = "Map of id values across all core_virtual_circuit_associated_tunnels_lookup, keyed the same as var.core_virtual_circuit_associated_tunnels_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_virtual_circuit_associated_tunnels.core_virtual_circuit_associated_tunnels_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_virtual_circuit_associated_tunnels_lookup_filter" {
  description = "Map of filter values across all core_virtual_circuit_associated_tunnels_lookup, keyed the same as var.core_virtual_circuit_associated_tunnels_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_virtual_circuit_associated_tunnels.core_virtual_circuit_associated_tunnels_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_virtual_circuit_associated_tunnels_lookup_virtual_circuit_associated_tunnel_details" {
  description = "Map of virtual_circuit_associated_tunnel_details values across all core_virtual_circuit_associated_tunnels_lookup, keyed the same as var.core_virtual_circuit_associated_tunnels_lookup except keys with no virtual_circuit_associated_tunnel_details are omitted"
  value       = { for k, v in data.oci_core_virtual_circuit_associated_tunnels.core_virtual_circuit_associated_tunnels_lookup : k => v.virtual_circuit_associated_tunnel_details if v.virtual_circuit_associated_tunnel_details != null && length(v.virtual_circuit_associated_tunnel_details) > 0 }
}
output "core_virtual_circuit_associated_tunnels_lookup_virtual_circuit_id" {
  description = "Map of virtual_circuit_id values across all core_virtual_circuit_associated_tunnels_lookup, keyed the same as var.core_virtual_circuit_associated_tunnels_lookup except keys with no virtual_circuit_id are omitted"
  value       = { for k, v in data.oci_core_virtual_circuit_associated_tunnels.core_virtual_circuit_associated_tunnels_lookup : k => v.virtual_circuit_id if v.virtual_circuit_id != null && length(v.virtual_circuit_id) > 0 }
}


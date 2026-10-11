variable "core_virtual_circuit_associated_tunnels_lookup" {
  description = <<EOT
Map of core_virtual_circuit_associated_tunnels_lookup, attributes below
Required:
    - virtual_circuit_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    virtual_circuit_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}


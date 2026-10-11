variable "billing_views_lookup" {
  description = <<EOT
Map of billing_views_lookup, attributes below
Optional:
    - billing_view_types
EOT

  type = map(object({
    billing_view_types = optional(list(string))
  }))
}


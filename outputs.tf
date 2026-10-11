output "billing_views_lookup_billing_view" {
  description = "Map of billing_view values across all billing_views_lookup, keyed the same as var.billing_views_lookup"
  value       = { for k, v in data.aws_billing_views.billing_views_lookup : k => v.billing_view if v.billing_view != null && length(v.billing_view) > 0 }
}
output "billing_views_lookup_billing_view_types" {
  description = "Map of billing_view_types values across all billing_views_lookup, keyed the same as var.billing_views_lookup"
  value       = { for k, v in data.aws_billing_views.billing_views_lookup : k => v.billing_view_types if v.billing_view_types != null && length(v.billing_view_types) > 0 }
}


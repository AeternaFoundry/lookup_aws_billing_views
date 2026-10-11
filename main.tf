data "aws_billing_views" "billing_views_lookup" {
  for_each = var.billing_views_lookup

  billing_view_types = each.value.billing_view_types
}


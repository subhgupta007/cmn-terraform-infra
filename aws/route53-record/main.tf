resource "aws_route53_record" "default" {
  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  
  # This block is mandatory alias records
  dynamic "alias" {
    for_each = var.alias_record ? [1] : []
    content {
      name                   = var.alias.name
      zone_id                = var.alias.zone_id
      evaluate_target_health = var.alias.evaluate_target_health
    }
  }

  # Conditional operators used for below arguments because it is mandatory for non-alias records
  records = var.non_alias_record ? var.records : null
  ttl     = var.non_alias_record ? var.ttl : null
}
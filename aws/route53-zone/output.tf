output "zone_id" {
  description = "Zone ID of Route53 zone"
  value       = aws_route53_zone.default.zone_id
}

output "name_servers" {
  description = "Name servers of Route53 zone"
  value       = aws_route53_zone.default.name_servers
}

output "zone_name" {
  description = "Name of Route53 zone"
  value       = aws_route53_zone.default.name
}

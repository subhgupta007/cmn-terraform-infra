### output of certificate ARN
output "certificate_arn" {
  value = aws_acm_certificate.default.arn
}

### output of domain validation options with DNS entries options
output "domain_validation_options" {
  value = aws_acm_certificate.default.domain_validation_options
}

### output of certificate domain name
output "certificate_domain_name" {
  value = aws_acm_certificate.default.domain_name
}

### output of certificate status
output "certificate_status" {
  value = aws_acm_certificate.default.status
}

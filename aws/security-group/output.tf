output "id" {
  description = "ID of the security group"
  value       = aws_security_group.default.id
}

output "arn" {
  description = "ARN of the security group"
  value       = aws_security_group.default.arn
}


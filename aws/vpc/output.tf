output "arn" {
  description = "ARN of the VPC"
  value       = aws_vpc.default.arn
}

output "id" {
  description = "ID of the VPC"
  value       = aws_vpc.default.id
}

output "cidr_block" {
  description = "CIDR block range"
  value       = aws_vpc.default.cidr_block
}

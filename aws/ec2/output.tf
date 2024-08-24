output "instance_id" {
  description = "List of EC2 instance IDs"
  value       = aws_instance.default.id
}

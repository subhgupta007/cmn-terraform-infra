output "table_arn" {
  value = aws_dynamodb_table.default.arn
}

output "table_name" {
  value = aws_dynamodb_table.default.id
}

output "stream_arn" {
  value = aws_dynamodb_table.default.stream_arn
}
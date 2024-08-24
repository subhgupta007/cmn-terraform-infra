output "bucket_name" {
  description = "Bucket name which is created."
  value       = aws_s3_bucket.default.id
}

output "bucket_arn" {
  description = "Bucket arn which is created."
  value       = aws_s3_bucket.default.arn
}

output "bucket_website_endpoint" {
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  value       = aws_s3_bucket.default.website_endpoint
}

output "bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com"
  value       = aws_s3_bucket.default.bucket_domain_name
}

output "bucket_regional_domain_name" {
  description = " The bucket region-specific domain name"
  value       = aws_s3_bucket.default.bucket_regional_domain_name
}

output "bucket_hosted_zone_id" {
  description = "The Route 53 Hosted Zone ID for this bucket's region"
  value       = aws_s3_bucket.default.hosted_zone_id
}

output "bucket_website_domain" {
  description = "The domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records"
  value       = aws_s3_bucket.default.website_domain
}

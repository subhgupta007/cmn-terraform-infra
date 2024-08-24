variable "bucket_name" {
  description = "The name of the bucket."
  type        = string
}

variable "versioning" {
  description = "Optional boolean to define versioning of the bucket. defaults to false."
  type        = string
  default     = false
}

variable "website" {
  description = "(Optional) map of string to define bucket as static website host."
  type        = map(string)
  default     = {}
}

variable "acl" {
  description = "(Optional) The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write. "
  type        = string
  default     = "private"
}

variable "lifecycle_rule" {
  description = "List of maps containing configuration of object lifecycle management."
  type        = any
  default     = []
}

variable "use_cors" {
  type        = bool
  description = "When true cors settings will be included"
  default     = false
}

variable "cors_allowed_headers" {
  type        = list(string)
  default     = []
  description = "Allowed cors headers (ex: '*')"
}

variable "cors_allowed_methods" {
  type        = list(string)
  default     = []
  description = "Allowed cors methods (ex: 'PUT', 'POST', 'GET')"
}

variable "cors_allowed_origins" {
  type        = list(string)
  default     = []
  description = "Allowed cors origins (ex: 'http://abc.com', 'http://def.com')"
}

variable "cors_exposed_headers" {
  type        = list(string)
  default     = []
  description = "Exposed cors headers (ex: 'ETag')"
}

variable "cors_preflight_cache_max_age_seconds" {
  type        = number
  default     = 3000
  description = "Preflight cache for cors max age in seconds (ex: 3000)"
}

variable "policy_statement" {
  type        = string
  description = "Provide the policy statement for custom bucket policy"
  default     = null
}

variable "enable_custom_policy" {
  type        = bool
  description = "Enable/disable the custom policy assignment"
  default     = false
}

# aws_s3_bucket_public_access_block
variable "enable_s3_bucket_public_access_block" {
  description = "Enable/disable bucket-level Public Access Block configuration"
  type        = bool
  default     = true
}

variable "bucket_block_public_acls" {
  description = "Whether Amazon S3 should block public ACLs for this bucket"
  type        = bool
  default     = true
}

variable "bucket_block_public_policy" {
  description = "Whether Amazon S3 should block public bucket policies for this bucket"
  type        = bool
  default     = true
}

variable "bucket_ignore_public_acls" {
  description = "Whether Amazon S3 should ignore public ACLs for this bucket"
  type        = bool
  default     = true
}

variable "bucket_restrict_public_buckets" {
  description = "Whether Amazon S3 should restrict public bucket policies for this bucket"
  type        = bool
  default     = true
}

#access logging

variable "logging" {
  description = "Set to true to enable server access logging for the S3 bucket or false to disable it."
  type        = bool
  default     = false
}

variable "target_bucket" {
  description = "target bucket to store the logs ."
  type        = string
}
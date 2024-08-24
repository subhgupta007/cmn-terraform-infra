variable "table_name" {
  type = string
}

variable "billing_mode" {
  type    = string
  default = "PAY_PER_REQUEST"
}

variable "read_capacity" {
  type    = number
  default = 0
}

variable "write_capacity" {
  type    = number
  default = 0
}

variable "tag_list" {
  type = map(any)
}

variable "hash_key" {
  type = string
}

variable "range_key" {
  type = string
  # Default is added since range key is optional
  default = null
}

variable "attributes" {
  description = "List of nested attribute definitions. Only required for hash_key and range_key attributes."
  type        = list(map(string))
}

variable "enable_backup" {
  type        = bool
  description = "Flag indicating if the point in time recovery should be enabled on Dynamodb table, defaults to false"
  default     = false
}

variable "local_secondary_indexes" {
  type        = list(any)
  description = "List of local secondary index definitions."
  default     = []
}

variable "global_secondary_indexes" {
  type        = list(any)
  description = "List of global secondary index definitions."
  default     = []
}

variable "stream_enabled" {
  description = "Indicates whether Streams are to be enabled (true) or disabled (false)."
  type        = bool
  default     = false
}

variable "stream_view_type" {
  description = "When an item in the table is modified, StreamViewType determines what information is written to the table's stream. Valid values are KEYS_ONLY, NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES."
  type        = string
  default     = null
}

variable "enable_delete_protection" {
  type        = bool
  description = "Flag indicating delete protection should be enabled on Dynamodb table, defaults to true"
  default     = true
}
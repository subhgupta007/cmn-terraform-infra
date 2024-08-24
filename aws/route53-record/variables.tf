variable "zone_id" {
  description = "Provide the zone_id (ID of DNS zone)"
  type        = string
}
variable "name" {
  description = "record name"
  type        = string
}
variable "type" {
  description = "record type"
  type        = string
}


variable "alias_record" {
  description = "This variable to be set to true if you want to set an alias record."
  type        = bool
  default     = false
}

variable "alias" {
  description = "Settings alias in records.This is a required field if alias_record set to true"
  type        = map
  # Default is required otherwise error will be thrown if non_alias_record set to true
  default = {}
}


variable "non_alias_record" {
  description = "This variable to be set to true if you want to set a non alias record"
  type        = bool
  default     = false
}

variable "records" {
  description = "List of DNS records. This is a required field for  is_alias_record set to false"
  type        = list(string)
  # Default is required otherwise error will be thrown if alias_record set to true
  default     = []
}

variable "ttl" {
  description = "The TTL of the record. This is a required field if is_alias_record set to false"
  type        = string
  # Default is required otherwise error will be thrown if alias_record set to true
  default     = "300"
}

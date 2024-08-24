variable "domain_name" {
  type        = string
  description = "Provide the domain name for the cerificate"
}

variable "validation_method" {
  type        = string
  description = "Validation method for issueing certificate"
}

variable "domain_zone_id" {
  type        = string
  description = "Zone ID of provided domain hosted in Route53"
}

variable "subject_alternative_names" {
  default     = []
  type        = list(string)
  description = "Subject alternative domain names"
}

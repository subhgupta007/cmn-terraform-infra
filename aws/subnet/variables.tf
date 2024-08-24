variable "vpc_id" {
  type        = string
  description = "The ID of the VPC the subnet belongs to"
}

variable "cidr_block" {
  type        = string
  description = "The CIDR block of the subnet"
}

variable "tag_map" {
  type        = map(any)
  description = "Tags of the subnet"
  default     = {}
}

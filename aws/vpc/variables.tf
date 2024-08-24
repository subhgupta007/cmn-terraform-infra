variable "cidr_range" {
  description = "The CIRD range for VPC"
  type        = string
}

variable "tenancy" {
  description = "Tenancy option for instances launched into the VPC. default makes your instances shared on the host. Using either of the other options (dedicated or host) costs at least $2/hr."
  type        = string
}

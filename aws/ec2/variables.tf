variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

// ebs variables

variable "ebs_volume_size" {
  description = "Size of EBS volume (in GB)"
  type        = number
}

variable "ebs_volume_type" {
  description = "EBS volume type"
  type        = string
  default     = "gp2"
}

// ec2 instance variables

variable "ami" {
  description = "ami id"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string
}

variable "instance_name" {
  description = "name of the instance"
  type        = string

}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

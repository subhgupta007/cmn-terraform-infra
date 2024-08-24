variable "name" {
  description = "Name of the security group. If omitted, Terraform will assign a random, unique name."
  type        = string
  default     = null
}

variable "description" {
  description = "Security group description. Defaults to Managed by Terraform"
  type        = string
  default     = "Security Group managed by Terraform"
}

variable "vpc_id" {
  description = "ID of the VPC where to create security group"
  type        = string
  default     = null
}

variable "ingress" {
  type        = list(object({
    from_port     = number
    to_port       = number
    protocol      = string
    cidr_blocks   = list(string)
    description   = string
    self          = bool
  }))
  default     = []
}

variable "egress" {
  type        = list(object({
    from_port     = number
    to_port       = number
    protocol      = string
    cidr_blocks   = list(string)
    description   = string
  }))

  default     = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow egress traffic"
    }
  ]
}

variable "tags" {
  description = "A mapping of tags to assign to security group"
  type        = map(string)
  default     = {}
}

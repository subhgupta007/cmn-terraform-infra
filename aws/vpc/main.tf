# This module creates a single bucket
resource "aws_vpc" "default" {
  cidr_block       = var.cidr_range
  instance_tenancy = var.tenancy
}

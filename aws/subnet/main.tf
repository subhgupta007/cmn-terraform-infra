resource "aws_subnet" "default" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
  tags       = var.tag_map
}

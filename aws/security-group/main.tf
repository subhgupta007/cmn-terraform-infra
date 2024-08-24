resource "aws_security_group" "default" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id
  dynamic "ingress" {
    iterator = i
    for_each = var.ingress
    content {
      from_port   = i.value["from_port"]
      to_port     = i.value["to_port"]
      protocol    = i.value["protocol"]
      cidr_blocks = i.value["cidr_blocks"]
      description = i.value["description"]
      self        = try(i.value["self"], false) ? true : false
    }
  }

  dynamic "egress" {
    iterator = e
    for_each = var.egress
    content {
      from_port   = e.value["from_port"]
      to_port     = e.value["to_port"]
      protocol    = e.value["protocol"]
      cidr_blocks = e.value["cidr_blocks"]
      description = e.value["description"]
    }
  }

  tags = {
    Name = var.name
  }
}

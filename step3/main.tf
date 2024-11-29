resource "aws_vpc" "tag-value" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "tag-value"
  }
}

# resource "aws_subnet" "tag-value" {
#   for_each = toset(var.subnet_cidr)

#   vpc_id     = aws_vpc.tag-value.id
#   cidr_block = each.key

#   tags = {
#     Name = "tag-value"
#   }
# }

resource "aws_subnet" "tag-value" {
  count = length(var.subnet_cidr)

  vpc_id     = aws_vpc.tag-value.id
  cidr_block = var.subnet_cidr[count.index]

  tags = {
    Name = "tag-value"
  }
}

resource "aws_security_group" "tag-value" {
  name        = "tag-value"
  description = "tag-value"
  vpc_id      = aws_vpc.tag-value.id

  tags = {
    Name = "tag-value"
  }
}

resource "aws_vpc_security_group_ingress_rule" "tag-value" {
  for_each = var.sg_ingress_rules

  security_group_id = aws_security_group.tag-value.id
  cidr_ipv4         = each.key
  from_port         = 443
  ip_protocol       = each.value.protocol
  to_port           = 443
}

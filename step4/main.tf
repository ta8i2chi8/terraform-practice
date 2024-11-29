resource "aws_vpc" "conditional" {
  cidr_block           = var.vpc-cidr
  enable_dns_support   = var.dev ? true : false
  enable_dns_hostnames = var.dev ? true : false

  tags = {
    Name = "conditional"
  }
}

resource "aws_subnet" "conditional" {
  count      = var.dev ? 1 : 0
  vpc_id     = aws_vpc.conditional.id
  cidr_block = var.subnet-cidr

  tags = {
    Name = "conditional"
  }
}

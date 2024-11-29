resource "aws_vpc" "network" {
  cidr_block = var.vpc-cidr
}

resource "aws_subnet" "network" {
  count = length(var.subnet-cidr)

  vpc_id     = aws_vpc.network.id
  cidr_block = var.subnet-cidr[count.index]
}


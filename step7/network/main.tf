resource "aws_vpc" "network" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "${var.pj}-vpc"
  }
}

resource "aws_subnet" "network" {
  vpc_id     = aws_vpc.network.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "${var.pj}-subnet"
  }
}

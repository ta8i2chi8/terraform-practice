data "aws_ssm_parameter" "al2" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "compute" {
  ami           = data.aws_ssm_parameter.al2.value
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [
    aws_security_group.compute.id
  ]

  ebs_block_device {
    delete_on_termination = true
    device_name           = "/dev/sdf"
    encrypted             = var.app == "front" ? true : false
    volume_size           = 8
    volume_type           = "gp2"
  }

  tags = {
    Name = "${var.pj}-${var.app}"
  }
}

resource "aws_security_group" "compute" {
  name        = "${var.pj}-${var.app}-ec2-sg"
  description = "${var.pj}-${var.app} ec2 sg"
  vpc_id      = var.vpc_id

  tags = {
    Name = "${var.pj}-${var.app}"
  }
}

resource "aws_vpc_security_group_ingress_rule" "compute" {
  for_each = toset(var.sg_inbound_ports)

  security_group_id = aws_security_group.compute.id
  cidr_ipv4         = var.sg_inbound_cidr
  ip_protocol       = "TCP"
  from_port         = each.key
  to_port           = each.key
}

resource "aws_s3_bucket" "compute" {
  count = var.app == "back" ? 1 : 0

  bucket = "${var.pj}-${var.app}-bucket"

  tags = {
    Name = "${var.pj}-${var.app}"
  }
}

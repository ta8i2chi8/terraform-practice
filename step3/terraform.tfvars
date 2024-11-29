vpc_cidr    = "10.1.0.0/16"
subnet_cidr = ["10.1.10.0/24", "10.1.20.0/24"]
sg_ingress_rules = {
  "10.1.10.10/32" = {
    protocol = "TCP"
  }
  "10.1.10.11/32" = {
    protocol = "TCP"
  }
  "10.1.10.12/32" = {
    protocol = "UDP"
  }
  "10.1.10.13/32" = {
    protocol = "UDP"
  }
  "10.1.10.14/32" = {
    protocol = "UDP"
  }
}

variable "vpc_cidr" {
  type    = string
  default = "10.1.0.0/16"
}

variable "subnet_cidr" {
  type    = list(string)
  default = ["10.1.10.0/24", "10.1.20.0/24"]
}

variable "sg_ingress_rules" {
  type = map(object({
    protocol = string
  }))
  default = {}
}

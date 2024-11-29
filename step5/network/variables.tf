variable "vpc-cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "subnet-cidr" {
  type        = list(string)
  description = "Subnet CIDR"
}

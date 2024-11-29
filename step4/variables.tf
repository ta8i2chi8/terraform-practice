variable "vpc-cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "subnet-cidr" {
  type        = string
  description = "Subnet CIDR"
}

variable "dev" {
  type        = bool
  description = "Development environment"
}

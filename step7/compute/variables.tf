variable "pj" {
  type        = string
  description = "PJ名"
}

variable "app" {
  type        = string
  description = "APP名"
}

variable "instance_type" {
  type        = string
  description = "EC2のインスタンスタイプ"
}

variable "vpc_id" {
  type        = string
  description = "VPCのID"
}

variable "subnet_id" {
  type        = string
  description = "サブネットのID"
}

variable "sg_inbound_cidr" {
  type        = string
  description = "セキュリティーグループでインバウンドを許可するCIDR"
}

variable "sg_inbound_ports" {
  type        = list(string)
  description = "セキュリティーグループでインバウンドを許可するポート番号のリスト"
}

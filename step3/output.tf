output "tag-value-sgid" {
  value = aws_security_group.tag-value.id
}

output "subnets" {
  value = [for key, value in aws_subnet.tag-value : value.id]
}

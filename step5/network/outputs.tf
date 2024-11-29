output "vpc-id" {
  value = aws_vpc.network.id
}

output "subnet-ids" {
  value = [for subnet in aws_subnet.network : subnet.id]
}

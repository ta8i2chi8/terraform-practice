output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.network.id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = aws_subnet.network.id
}

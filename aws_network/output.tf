# Add output variables
output "public_subnet_id" {
  value = aws_subnet.public_subnet[*].id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet[*].id
}
output "vpc_id" {
  value = aws_vpc.main.id
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
}

output "destination_cidr_block" {
  value = aws_vpc.main.cidr_block
}


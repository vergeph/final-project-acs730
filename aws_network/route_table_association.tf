# Associate subnets with the custom route table
resource "aws_route_table_association" "public_routes" {
  #  count          = length(module.vpc-ansible.public_subnet_id[*])
  #  route_table_id = aws_route_table.ansible_public_subnets.id
  #  subnet_id      = module.vpc-ansible.public_subnet_id[count.index]
  count          = length(var.public_cidr_blocks)
  route_table_id = aws_route_table.public_subnets.id
  subnet_id      = aws_subnet.public_subnet[count.index].id
}

resource "aws_route_table_association" "private_routes" {
  #  count          = length(module.vpc-ansible.public_subnet_id[*])
  #  route_table_id = aws_route_table.ansible_public_subnets.id
  #  subnet_id      = module.vpc-ansible.public_subnet_id[count.index]
  count          = length(var.public_cidr_blocks)
  route_table_id = aws_route_table.private_subnets.id
  subnet_id      = aws_subnet.private_subnet[count.index].id
}


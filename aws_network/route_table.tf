
#
resource "aws_route_table" "public_subnets" {
  #  vpc_id = module.vpc-ansible.vpc_id
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "${var.prefix}-${var.env}-route-public-subnets"
  }
}

resource "aws_route_table" "private_subnets" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }
  tags = {
    Name = "${var.prefix}-${var.env}-route-private-subnets"
  }
}

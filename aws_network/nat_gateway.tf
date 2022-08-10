# Create NAT gateway

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip_nat.id
  #  subnet_id     = module.vpc-nonprod.public_subnet_id[0]
  subnet_id = aws_subnet.public_subnet[1].id
  tags = {
    Name = "${var.prefix}-${var.env}-nat"
  }
}

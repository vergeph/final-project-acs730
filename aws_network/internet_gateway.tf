# Create Internet Gateway

resource "aws_internet_gateway" "igw" {
  #  vpc_id = module.vpc-ansible.vpc_id
  vpc_id = aws_vpc.main.id

  tags = {
    "Name" = "${var.prefix}-${var.env}-igw"
  }
}

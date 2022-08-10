# Add provisioning of the public subnetin the default VPC

resource "aws_subnet" "public_subnet" {

  count             = length(var.public_cidr_blocks)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_cidr_blocks[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = merge(
    local.default_tags, {
      Name = "${var.prefix}-${var.env}-public-subnet-${count.index}"
    }
  )
}

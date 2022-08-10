# Create an Elastic IP Address for NAT

resource "aws_eip" "eip_nat" {
  vpc = true

  tags = {
    Name = "${var.prefix}-${var.env}-nat-eip"
  }
}

# Create a new VPC 
resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  #  enable_dns_hostnames = true
  tags = merge(
    local.default_tags, {
      Name = "${var.prefix}-${var.env}-vpc"
    }
  )
}


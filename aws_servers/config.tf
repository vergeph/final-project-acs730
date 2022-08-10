# Data source for AMI id
data "aws_ami" "latest_amazon_linux" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}


# Data source for AMI id
#data "aws_ami" "latest_ubuntu_linux" {
#  owners      = ["amazon"]
#  owners      = ["099720109477"]
#  most_recent = true
#  filter {
#    name   = "name"
#    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
#  }
#}



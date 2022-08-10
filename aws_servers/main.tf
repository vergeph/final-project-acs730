# Define tags locally
locals {
  #  default_tags = merge(var.default_tags, { "OS" = "${var.env == "amazon-sub01"}" || "${var.env == "amazon-sub02"}" ? "amazon" : "ubuntu" })
  default_tags = merge(var.default_tags, { "env" = var.env })
}

#resource "aws_launch_configuration" "web" {
#  name_prefix   = "web-"
#  image_id      = data.aws_ami.latest_amazon_linux
#  instance_type = var.instance_type
#  key_name      = aws_key_pair.ssh_key.key_name

#  security_groups             = var.security_groups
#  associate_public_ip_address = true
#  user_data                   = file("data.sh")

#  lifecycle {
#    create_before_destroy = true
#  }

#  tags = merge(local.default_tags,
#    {
#      "Name" = "${var.prefix}-${var.env}-aws-launch-conf"
#    }
#  )
#}




# Create a Amazon Linux instance
#resource "aws_instance" "amazon-vm" {
#  ami             = lookup(var.ami, var.env)
#  instance_type   = var.instance_type
#  key_name        = aws_key_pair.ssh_key.key_name
#  subnet_id       = var.subnet_id
#  security_groups = var.security_groups
#  associate_public_ip_address = false
#  associate_public_ip_address = true

#  lifecycle {
#    create_before_destroy = true
#  }

#  tags = merge(local.default_tags,
#    {
#      "Name" = "${var.prefix}-${var.env}-Linux"
#    }
#  )
#}



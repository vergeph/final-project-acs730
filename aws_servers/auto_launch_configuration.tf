resource "aws_launch_configuration" "final" {
  name = "${var.prefix}-${var.env}-aws-launch-conf"
  #  image_id = data.aws_ami.latest_amazon_linux
  #  image_id = "ami-0cabc39acf991f4f1"
  image_id = "ami-0425af692a96ff938"
  #  instance_type = var.instance_type
  instance_type = lookup(var.instance_type, var.env)
  key_name      = aws_key_pair.ssh_key.key_name

  security_groups             = var.security_groups
  associate_public_ip_address = true

  #  user_data                   = file("script.sh")

  user_data = templatefile("script.sh", { env = upper(var.env) })


  lifecycle {
    create_before_destroy = true
  }

  #  tags = merge(local.default_tags,
  #  tags = {
  #      "Name" = "${var.prefix}-${var.env}-aws-launch-conf"
  #    }
  #  )
}


# Create Application Load Balancer 
resource "aws_lb" "alb" {
  name               = "${var.prefix}-${var.env}-alb"
  internal           = false
  load_balancer_type = "application"
  #  security_groups    = [aws_security_group.web_sg.id]
  security_groups = var.security_groups
  #  subnets            = [for subnet in aws_subnet.public_subnet : subnet.id]
  #  subnets = var.private_subnet_ids
  subnets = var.public_subnet_ids

  enable_deletion_protection = false

}

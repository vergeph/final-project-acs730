#resource "aws_elb" "alb" {

#  name = "${var.prefix}-${var.env}-alb"
#  internal           = false
#  load_balancer_type = "application"
#  security_groups    = [aws_security_group.web_sg.id]
#  security_groups = var.security_groups
#  subnets            = [for subnet in aws_subnet.public_subnet : subnet.id]
# subnets = var.public_subnet_ids

#  enable_deletion_protection = false

#  cross_zone_load_balancing = true



#  health_check {
#    healthy_threshold   = 2
#    unhealthy_threshold = 2
#    timeout             = 3
#    interval            = 30
#    target              = "HTTP:80/"
#  }

#  listener {
#    lb_port           = 80
#    lb_protocol       = "http"
#    instance_port     = "80"
#    instance_protocol = "http"
#  }

#  access_logs {
#    bucket  = aws_s3_bucket.alb_logs.bucket
#    enabled = true
#  }

#  tags = merge(
#    local.default_tags, {
#      Name = "${var.prefix}-application-load-balancer"
#    }
#  )
#}
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


  #  listener {
  #    lb_port = 80
  #    lb_protocol = "http"
  #    instance_port = "80"
  #    instance_protocol = "http"
  #  }

  #  access_logs {
  #    bucket  = aws_s3_bucket.alb_logs.bucket
  #    enabled = true
  #  }

  #  tags = merge(
  #    local.default_tags, {
  #Name = "${var.prefix}-application-load-balancer"
  #    }
  #  )
}

resource "aws_lb_target_group" "alb_tg" {
  name     = "${var.prefix}-${var.env}-alb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id


  #lifecycle   

  #  health_check {
  #    path = "/var/www/html/index.html"
  #    port = 2001
  #    healthy_threshold   = 5
  #    unhealthy_threshold = 2
  #    timeout             = 5
  #    interval            = 30
  #    matcher             = "200" # has to be HTTP 200 or fails
  #  }



}

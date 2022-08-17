#aws application load balancing listener
resource "aws_lb_listener" "alb" {
  #  name              = "${var.prefix}-${var.env}-alb-listener"
  load_balancer_arn = aws_lb.alb.arn

  port     = "80"
  protocol = "HTTP"

  default_action {
    target_group_arn = aws_lb_target_group.alb_tg.arn
    type             = "forward"
  }

}





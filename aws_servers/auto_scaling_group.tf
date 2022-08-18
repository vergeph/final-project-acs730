#Create Auto Scaling Group 
resource "aws_autoscaling_group" "final" {
  name     = "${var.prefix}-${var.env}-as-group"
  min_size = 1
  desired_capacity = var.env == "dev" ? 2 : 3
  max_size = 4

   vpc_zone_identifier = [var.private_subnet_ids[0], var.private_subnet_ids[1], var.private_subnet_ids[2]]
#  vpc_zone_identifier = [var.public_subnet_ids[0], var.public_subnet_ids[1], var.public_subnet_ids[2]]

#  health_check_type = "EC2"
    health_check_type         = "ELB"
  health_check_grace_period = 300
  #  health_check_grace_period = 60
  #  force_delete              = true
  #    load_balancers = [aws_elb.alb.id]
  #    "${aws_lb.alb.id}"
  #  ]

  #  launch_configuration = aws_launch_configuration.web.name
  launch_configuration = aws_launch_configuration.final.name

  target_group_arns = ["${aws_lb_target_group.alb_tg.arn}"]

   tag {
    key                 = "Name"
    value               = "${var.prefix}-${var.env}-auto-scailing-group"
    propagate_at_launch = true
  }
}

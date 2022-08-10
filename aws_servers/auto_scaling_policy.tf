#resource "aws_autoscaling_policy" "cpu_policy_up" {
#  name                   = "cpu_policy_up"
#  scaling_adjustment     = 1
#  adjustment_type        = "ChangeInCapacity"
#  cooldown               = 100
#  autoscaling_group_name = aws_autoscaling_group.final.name
#}


#resource "aws_autoscaling_policy" "cpu_policy_down" {
#  name                   = "cpu_policy_down"
#  scaling_adjustment     = -1
#  adjustment_type        = "ChangeInCapacity"
#  cooldown               = 100
#  autoscaling_group_name = aws_autoscaling_group.final.name
#}



resource "aws_autoscaling_policy" "scale_up" {
  name        = "target_tracking"
  policy_type = "TargetTrackingScaling"
  #  scaling_adjustment     = 1
  autoscaling_group_name = aws_autoscaling_group.final.name
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }

    target_value = 10.0
  }
}

#Create Auto Scaling Policy
resource "aws_autoscaling_policy" "cpu_policy_up" {
  name                   = "cpu_policy_up"
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 100
  autoscaling_group_name = aws_autoscaling_group.final.name
}


resource "aws_autoscaling_policy" "cpu_policy_down" {
  name                   = "cpu_policy_down"
  scaling_adjustment     = -1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 100
  autoscaling_group_name = aws_autoscaling_group.final.name
}




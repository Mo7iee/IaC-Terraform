resource "aws_autoscaling_group" "app_asg" {
  desired_capacity     = 2
  max_size             = 4
  min_size             = 2
  health_check_type    = "EC2"
  vpc_zone_identifier  = [
    aws_subnet.private_sub1.id,
    aws_subnet.private_sub2.id,
    
  ]
  launch_template {
    id      = aws_launch_template.app_lt.id
    version = "$Latest"
  }

  # target_group_arns = [aws_lb_target_group.app_tg.arn]  # attach to ALB

  tag {
    key                 = "Name"
    value               = "app-instance"
    propagate_at_launch = true
  }
}

resource "aws_launch_template" "app_lt" {
  name_prefix   = "app-lt-"
  image_id      = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"

  iam_instance_profile {
    name = aws_iam_instance_profile.asg_instance_profile.name
  }

  network_interfaces {
    security_groups             = [aws_security_group.private_sg.id]
    associate_public_ip_address = false
  }

  key_name = "key"
}

resource "aws_iam_instance_profile" "asg_instance_profile" {
  name = "asg-instance-profile"
  role = aws_iam_role.asg_role.name
}
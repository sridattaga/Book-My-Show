resource "aws_launch_template" "app" {
  image_id      = var.ami
  instance_type = "t3.micro"
  user_data     = filebase64("userdata.sh")
}

resource "aws_autoscaling_group" "app_asg" {
  desired_capacity = 2
  max_size         = 4
  min_size         = 2
  vpc_zone_identifier = var.private_subnets
  launch_template {
    id      = aws_launch_template.app.id
    version = "$Latest"
  }
}

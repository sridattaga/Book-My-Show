resource "aws_lb" "app_alb" {
  name               = "bookmyshow-alb"
  load_balancer_type = "application"
  subnets            = var.public_subnets
  security_groups    = [var.alb_sg]
}

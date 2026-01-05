# ALB already exists from manual setup, commenting out to avoid conflict
# resource "aws_lb" "main" {
#   name               = "${var.app_name}-alb"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.alb.id]
#   subnets            = [aws_subnet.public_1.id, aws_subnet.public_2.id]
#   tags = { Name = "${var.app_name}-alb" }
# }

# resource "aws_lb_target_group" "app" {
#   name        = "${var.app_name}-tg"
#   port        = 3000
#   protocol    = "HTTP"
#   vpc_id      = aws_vpc.main.id
#   health_check {
#     healthy_threshold   = 2
#     unhealthy_threshold = 2
#     timeout             = 5
#     interval            = 30
#     path                = "/health"
#     matcher             = "200"
#   }
#   tags = { Name = "${var.app_name}-tg" }
# }

# resource "aws_lb_listener" "http" {
#   load_balancer_arn = aws_lb.main.arn
#   port              = 80
#   protocol          = "HTTP"
#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.app.arn
#   }
# }

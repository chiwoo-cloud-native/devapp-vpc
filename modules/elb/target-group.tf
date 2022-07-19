resource "aws_alb_target_group" "tg80" {
  name        = "${var.resrc_prefix_nm}-${var.app_nm}-tg80"
  protocol    = "HTTP"
  port        = 80
  target_type = "instance"
  vpc_id      = var.vpc_id

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    matcher             = "200"
    path                = "/"
  }

  tags = merge({
    Name = "${var.resrc_prefix_nm}-${var.app_nm}-tg80"
  }, var.extra_tags)

}

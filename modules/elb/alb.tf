resource "aws_alb" "alb" {
  name               = "${var.resrc_prefix_nm}-${var.app_nm}-alb"
  load_balancer_type = "application"
  internal           = false
  subnets            = var.pub_sn_ids

  security_groups = [aws_security_group.alb-sg.id]

  // NOTE there is a bug in terraform - it can't remove the lb and the whole destroy fails
  enable_deletion_protection = false

  tags = merge({
    Name = "${var.resrc_prefix_nm}-${var.app_nm}-alb"
  }, var.extra_tags)

}

resource "aws_alb_listener" "alb-listener443" {
  load_balancer_arn = aws_alb.alb.arn
  port              = 443
  protocol          = "HTTPS"
  certificate_arn   = data.aws_acm_certificate.acm.arn

  default_action {
    target_group_arn = aws_alb_target_group.tg80.arn
    type             = "forward"
  }

}

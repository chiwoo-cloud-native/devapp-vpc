resource "aws_security_group" "alb-sg" {
  name    = "${var.resrc_prefix_nm}-${var.app_nm}-alb-sg"
  vpc_id  = var.vpc_id

  ingress {
    from_port     = 443
    to_port       = 443
    protocol      = "TCP"
    cidr_blocks   = ["0.0.0.0/0"]
  }

  egress {
    from_port     = 0
    to_port       = 0
    protocol      = "-1"
    cidr_blocks   = ["0.0.0.0/0"]
  }

  lifecycle {
    create_before_destroy = true
  }

  tags = merge(map(
    "Name", "${var.resrc_prefix_nm}-${var.app_nm}-alb-sg"
  ), var.extra_tags)

}

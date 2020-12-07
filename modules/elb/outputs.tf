output "alb-sg-id" {
  value = aws_security_group.alb-sg.id
}

output "alb-listener_arn" {
  value = aws_alb_listener.alb-listener443.arn
}

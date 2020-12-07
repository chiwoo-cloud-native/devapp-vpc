output "app_nm" {
  value = var.app_nm
}

output "pub_sn_ids" {
  value = aws_subnet.pub-sn.*.id
}

output "app_sn_ids" {
  value = aws_subnet.sn.*.id
}

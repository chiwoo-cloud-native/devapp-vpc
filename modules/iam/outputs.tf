output "ssm-ec2-profile-name" {
  value = aws_iam_instance_profile.ssm-ec2-profile.name
}

output "admin-ec2-profile-name" {
  value = aws_iam_instance_profile.admin-ec2-profile.name
}

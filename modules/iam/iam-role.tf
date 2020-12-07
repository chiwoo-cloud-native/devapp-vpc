# codedeploy-role
resource "aws_iam_role" "codedeploy-role" {
  name = "${var.project_name}-codedeploy-role"
  assume_role_policy = data.aws_iam_policy_document.policy-doc-codedeploy.json

  tags = {
    Name          = "${var.project_name}-codedeploy-role"
    Environment   = var.env_name
  }
}

# admin-ec2-role for jenkins
resource "aws_iam_role" "admin-ec2-role" {
  name = "${var.project_name}-admin-ec2-role"
  assume_role_policy = data.aws_iam_policy_document.policy-doc-ec2.json

  tags = {
    Name          = "${var.project_name}-admin-ec2-role"
    Environment   = var.env_name
  }
}

resource "aws_iam_role_policy_attachment" "admin-policy-admin-ec2-role" {
  role          = aws_iam_role.admin-ec2-role.name
  policy_arn    = data.aws_iam_policy.admin-policy.arn
}

resource "aws_iam_instance_profile" "admin-ec2-profile" {
  name = "${var.project_name}-admin-ec2-profile"
  role = aws_iam_role.admin-ec2-role.name
}


# ssm-ec2-role
resource "aws_iam_role" "ssm-ec2-role" {
  name = "${var.project_name}-ssm-ec2-role"
  assume_role_policy = data.aws_iam_policy_document.policy-doc-ec2.json

  tags = {
    Name          = "${var.project_name}-ssm-ec2-role"
    Environment   = var.env_name
  }
}

resource "aws_iam_role_policy_attachment" "ssm-policy-to-ssm-ec2-role" {
  role          = aws_iam_role.ssm-ec2-role.name
  policy_arn    = data.aws_iam_policy.ssm-ec2-policy.arn
}

resource "aws_iam_instance_profile" "ssm-ec2-profile" {
  name = "${var.project_name}-ssm-ec2-profile"
  role = aws_iam_role.ssm-ec2-role.name
}


# codedeploy-ec2-role
resource "aws_iam_role" "codedeploy-ec2-role" {
  name          = "${var.project_name}-codedeploy-ec2-role"
  assume_role_policy = data.aws_iam_policy_document.policy-doc-ec2.json

  tags = {
    Name        = "${var.project_name}-codedeploy-ec2-role"
    Environment = var.env_name
  }
}

resource "aws_iam_role_policy_attachment" "ssm-policy-to-codedeploy-ec2-role" {
  role          = aws_iam_role.codedeploy-ec2-role.name
  policy_arn    = data.aws_iam_policy.ssm-ec2-policy.arn
}

resource "aws_iam_role_policy_attachment" "codedeploy-policy-to-codedeploy-ec2-role" {
  role          = aws_iam_role.codedeploy-ec2-role.name
  policy_arn    = data.aws_iam_policy.codedeploy-policy.arn
}

resource "aws_iam_role_policy_attachment" "s3-readonly-policy-to-codedeploy-ec2-role" {
  role          = aws_iam_role.codedeploy-ec2-role.name
  policy_arn    = data.aws_iam_policy.s3-readonly-policy.arn
}

resource "aws_iam_instance_profile" "codedeploy-ec2-profile" {
  name = "${var.project_name}-codedeploy-ec2-profile"
  role = aws_iam_role.codedeploy-ec2-role.name
}
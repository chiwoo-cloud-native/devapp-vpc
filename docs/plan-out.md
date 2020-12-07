## Checkout report for provisioning. 

```bash

terraform plan

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.devapp-base.aws_eip.eip will be created
  + resource "aws_eip" "eip" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-eip"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
      + vpc                  = true
    }

  # module.devapp-base.aws_internet_gateway.igw will be created
  + resource "aws_internet_gateway" "igw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-igw"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
      + vpc_id   = (known after apply)
    }

  # module.devapp-base.aws_nat_gateway.nat will be created
  + resource "aws_nat_gateway" "nat" {
      + allocation_id        = (known after apply)
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-nat"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
    }

  # module.devapp-base.aws_route_table.pub-rt will be created
  + resource "aws_route_table" "pub-rt" {
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = (known after apply)
              + instance_id               = ""
              + ipv6_cidr_block           = ""
              + local_gateway_id          = ""
              + nat_gateway_id            = ""
              + network_interface_id      = ""
              + transit_gateway_id        = ""
              + vpc_endpoint_id           = ""
              + vpc_peering_connection_id = ""
            },
        ]
      + tags             = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-pub-rt"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
      + vpc_id           = (known after apply)
    }

  # module.devapp-base.aws_route_table.rt will be created
  + resource "aws_route_table" "rt" {
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = ""
              + instance_id               = ""
              + ipv6_cidr_block           = ""
              + local_gateway_id          = ""
              + nat_gateway_id            = (known after apply)
              + network_interface_id      = ""
              + transit_gateway_id        = ""
              + vpc_endpoint_id           = ""
              + vpc_peering_connection_id = ""
            },
        ]
      + tags             = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-base-rt"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
      + vpc_id           = (known after apply)
    }

  # module.devapp-base.aws_route_table_association.pub-rt-ac[0] will be created
  + resource "aws_route_table_association" "pub-rt-ac" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.devapp-base.aws_route_table_association.pub-rt-ac[1] will be created
  + resource "aws_route_table_association" "pub-rt-ac" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.devapp-base.aws_route_table_association.rt-ac[0] will be created
  + resource "aws_route_table_association" "rt-ac" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.devapp-base.aws_route_table_association.rt-ac[1] will be created
  + resource "aws_route_table_association" "rt-ac" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.devapp-base.aws_subnet.pub-sn[0] will be created
  + resource "aws_subnet" "pub-sn" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "ap-northeast-2a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.10.1.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-pub-1a-sn"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
      + vpc_id                          = (known after apply)
    }

  # module.devapp-base.aws_subnet.pub-sn[1] will be created
  + resource "aws_subnet" "pub-sn" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "ap-northeast-2c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.10.2.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-pub-1c-sn"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
      + vpc_id                          = (known after apply)
    }

  # module.devapp-base.aws_subnet.sn[0] will be created
  + resource "aws_subnet" "sn" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "ap-northeast-2a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.10.21.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-base-1a-sn"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
      + vpc_id                          = (known after apply)
    }

  # module.devapp-base.aws_subnet.sn[1] will be created
  + resource "aws_subnet" "sn" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "ap-northeast-2c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.10.22.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-base-1c-sn"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
      + vpc_id                          = (known after apply)
    }

  # module.elb.aws_alb.alb will be created
  + resource "aws_alb" "alb" {
      + arn                        = (known after apply)
      + arn_suffix                 = (known after apply)
      + dns_name                   = (known after apply)
      + drop_invalid_header_fields = false
      + enable_deletion_protection = false
      + enable_http2               = true
      + id                         = (known after apply)
      + idle_timeout               = 60
      + internal                   = false
      + ip_address_type            = (known after apply)
      + load_balancer_type         = "application"
      + name                       = "devapp-an2-p-base-alb"
      + security_groups            = (known after apply)
      + subnets                    = (known after apply)
      + tags                       = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-base-alb"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
      + vpc_id                     = (known after apply)
      + zone_id                    = (known after apply)

      + subnet_mapping {
          + allocation_id        = (known after apply)
          + outpost_id           = (known after apply)
          + private_ipv4_address = (known after apply)
          + subnet_id            = (known after apply)
        }
    }

  # module.elb.aws_alb_listener.alb-listener443 will be created
  + resource "aws_alb_listener" "alb-listener443" {
      + arn               = (known after apply)
      + certificate_arn   = "arn:aws:acm:ap-northeast-2:144149479695:certificate/f18b5da0-218d-44cc-a28c-a3774bbd7641"
      + id                = (known after apply)
      + load_balancer_arn = (known after apply)
      + port              = 443
      + protocol          = "HTTPS"
      + ssl_policy        = (known after apply)

      + default_action {
          + order            = (known after apply)
          + target_group_arn = (known after apply)
          + type             = "forward"
        }
    }

  # module.elb.aws_alb_target_group.tg80 will be created
  + resource "aws_alb_target_group" "tg80" {
      + arn                                = (known after apply)
      + arn_suffix                         = (known after apply)
      + deregistration_delay               = 300
      + id                                 = (known after apply)
      + lambda_multi_value_headers_enabled = false
      + load_balancing_algorithm_type      = (known after apply)
      + name                               = "devapp-an2-p-base-tg80"
      + port                               = 80
      + protocol                           = "HTTP"
      + proxy_protocol_v2                  = false
      + slow_start                         = 0
      + tags                               = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-base-tg80"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
      + target_type                        = "instance"
      + vpc_id                             = (known after apply)

      + health_check {
          + enabled             = true
          + healthy_threshold   = 2
          + interval            = 10
          + matcher             = "200"
          + path                = "/"
          + port                = "traffic-port"
          + protocol            = "HTTP"
          + timeout             = (known after apply)
          + unhealthy_threshold = 2
        }

      + stickiness {
          + cookie_duration = (known after apply)
          + enabled         = (known after apply)
          + type            = (known after apply)
        }
    }

  # module.elb.aws_security_group.alb-sg will be created
  + resource "aws_security_group" "alb-sg" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
        ]
      + name                   = "devapp-an2-p-base-alb-sg"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-base-alb-sg"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
      + vpc_id                 = (known after apply)
    }

  # module.iam.aws_iam_instance_profile.admin-ec2-profile will be created
  + resource "aws_iam_instance_profile" "admin-ec2-profile" {
      + arn         = (known after apply)
      + create_date = (known after apply)
      + id          = (known after apply)
      + name        = "devapp-admin-ec2-profile"
      + path        = "/"
      + role        = "devapp-admin-ec2-role"
      + unique_id   = (known after apply)
    }

  # module.iam.aws_iam_instance_profile.codedeploy-ec2-profile will be created
  + resource "aws_iam_instance_profile" "codedeploy-ec2-profile" {
      + arn         = (known after apply)
      + create_date = (known after apply)
      + id          = (known after apply)
      + name        = "devapp-codedeploy-ec2-profile"
      + path        = "/"
      + role        = "devapp-codedeploy-ec2-role"
      + unique_id   = (known after apply)
    }

  # module.iam.aws_iam_instance_profile.ssm-ec2-profile will be created
  + resource "aws_iam_instance_profile" "ssm-ec2-profile" {
      + arn         = (known after apply)
      + create_date = (known after apply)
      + id          = (known after apply)
      + name        = "devapp-ssm-ec2-profile"
      + path        = "/"
      + role        = "devapp-ssm-ec2-role"
      + unique_id   = (known after apply)
    }

  # module.iam.aws_iam_role.admin-ec2-role will be created
  + resource "aws_iam_role" "admin-ec2-role" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                      + Sid       = ""
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "devapp-admin-ec2-role"
      + path                  = "/"
      + tags                  = {
          + "Environment" = "p"
          + "Name"        = "devapp-admin-ec2-role"
        }
      + unique_id             = (known after apply)
    }

  # module.iam.aws_iam_role.codedeploy-ec2-role will be created
  + resource "aws_iam_role" "codedeploy-ec2-role" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                      + Sid       = ""
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "devapp-codedeploy-ec2-role"
      + path                  = "/"
      + tags                  = {
          + "Environment" = "p"
          + "Name"        = "devapp-codedeploy-ec2-role"
        }
      + unique_id             = (known after apply)
    }

  # module.iam.aws_iam_role.codedeploy-role will be created
  + resource "aws_iam_role" "codedeploy-role" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "codedeploy.amazonaws.com"
                        }
                      + Sid       = ""
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "devapp-codedeploy-role"
      + path                  = "/"
      + tags                  = {
          + "Environment" = "p"
          + "Name"        = "devapp-codedeploy-role"
        }
      + unique_id             = (known after apply)
    }

  # module.iam.aws_iam_role.ssm-ec2-role will be created
  + resource "aws_iam_role" "ssm-ec2-role" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                      + Sid       = ""
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + max_session_duration  = 3600
      + name                  = "devapp-ssm-ec2-role"
      + path                  = "/"
      + tags                  = {
          + "Environment" = "p"
          + "Name"        = "devapp-ssm-ec2-role"
        }
      + unique_id             = (known after apply)
    }

  # module.iam.aws_iam_role_policy_attachment.admin-policy-admin-ec2-role will be created
  + resource "aws_iam_role_policy_attachment" "admin-policy-admin-ec2-role" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
      + role       = "devapp-admin-ec2-role"
    }

  # module.iam.aws_iam_role_policy_attachment.codedeploy-policy-to-codedeploy-ec2-role will be created
  + resource "aws_iam_role_policy_attachment" "codedeploy-policy-to-codedeploy-ec2-role" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole"
      + role       = "devapp-codedeploy-ec2-role"
    }

  # module.iam.aws_iam_role_policy_attachment.s3-readonly-policy-to-codedeploy-ec2-role will be created
  + resource "aws_iam_role_policy_attachment" "s3-readonly-policy-to-codedeploy-ec2-role" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
      + role       = "devapp-codedeploy-ec2-role"
    }

  # module.iam.aws_iam_role_policy_attachment.ssm-policy-to-codedeploy-ec2-role will be created
  + resource "aws_iam_role_policy_attachment" "ssm-policy-to-codedeploy-ec2-role" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
      + role       = "devapp-codedeploy-ec2-role"
    }

  # module.iam.aws_iam_role_policy_attachment.ssm-policy-to-ssm-ec2-role will be created
  + resource "aws_iam_role_policy_attachment" "ssm-policy-to-ssm-ec2-role" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
      + role       = "devapp-ssm-ec2-role"
    }

  # module.vpc.aws_vpc.vpc will be created
  + resource "aws_vpc" "vpc" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "10.10.0.0/16"
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = (known after apply)
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = true
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = "default"
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
      + tags                             = {
          + "CostCenter" = "78925"
          + "Env"        = "p"
          + "Name"       = "devapp-an2-p-vpc"
          + "Owner"      = "symplesims@ggmail.com"
          + "Proejct"    = "devapp"
          + "Team"       = "devops-1"
        }
    }

Plan: 30 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

```
## Provisioning REAL INFRASTRUCTURE.

```bash
terraform apply 

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.iam.aws_iam_role.ssm-ec2-role: Creating...
module.iam.aws_iam_role.codedeploy-ec2-role: Creating...
module.iam.aws_iam_role.admin-ec2-role: Creating...
module.iam.aws_iam_role.codedeploy-role: Creating...
module.vpc.aws_vpc.vpc: Creating...
module.vpc.aws_vpc.vpc: Creation complete after 1s [id=vpc-0ba8b8776fb7cfc1f]
module.devapp-base.aws_internet_gateway.igw: Creating...
module.devapp-base.aws_subnet.sn[1]: Creating...
module.devapp-base.aws_subnet.pub-sn[1]: Creating...
module.devapp-base.aws_subnet.sn[0]: Creating...
module.elb.aws_security_group.alb-sg: Creating...
module.elb.aws_alb_target_group.tg80: Creating...
module.iam.aws_iam_role.codedeploy-ec2-role: Creation complete after 2s [id=devapp-codedeploy-ec2-role]
module.iam.aws_iam_role.admin-ec2-role: Creation complete after 2s [id=devapp-admin-ec2-role]
module.iam.aws_iam_role.ssm-ec2-role: Creation complete after 2s [id=devapp-ssm-ec2-role]
module.devapp-base.aws_subnet.pub-sn[0]: Creating...
module.iam.aws_iam_role.codedeploy-role: Creation complete after 2s [id=devapp-codedeploy-role]
module.iam.aws_iam_role_policy_attachment.s3-readonly-policy-to-codedeploy-ec2-role: Creating...
module.iam.aws_iam_instance_profile.codedeploy-ec2-profile: Creating...
module.iam.aws_iam_role_policy_attachment.ssm-policy-to-codedeploy-ec2-role: Creating...
module.elb.aws_alb_target_group.tg80: Creation complete after 1s [id=arn:aws:elasticloadbalancing:ap-northeast-2:144149479695:targetgroup/devapp-an2-p-base-tg80/f304b1099ec34578]
module.iam.aws_iam_role_policy_attachment.codedeploy-policy-to-codedeploy-ec2-role: Creating...
module.devapp-base.aws_internet_gateway.igw: Creation complete after 1s [id=igw-0d1b4be496cccfecd]
module.iam.aws_iam_role_policy_attachment.admin-policy-admin-ec2-role: Creating...
module.devapp-base.aws_subnet.sn[0]: Creation complete after 1s [id=subnet-01be69d88907e3405]
module.devapp-base.aws_subnet.sn[1]: Creation complete after 1s [id=subnet-023e6e4808e07abdf]
module.iam.aws_iam_instance_profile.admin-ec2-profile: Creating...
module.iam.aws_iam_instance_profile.ssm-ec2-profile: Creating...
module.devapp-base.aws_subnet.pub-sn[1]: Creation complete after 1s [id=subnet-0d2b8320fffdc3613]
module.iam.aws_iam_role_policy_attachment.ssm-policy-to-ssm-ec2-role: Creating...
module.devapp-base.aws_subnet.pub-sn[0]: Creation complete after 0s [id=subnet-007867a8551cb6486]
module.devapp-base.aws_route_table.pub-rt: Creating...
module.devapp-base.aws_route_table.pub-rt: Creation complete after 1s [id=rtb-019172df44d645191]
module.elb.aws_security_group.alb-sg: Creation complete after 2s [id=sg-00cce10c856addbc9]
module.devapp-base.aws_eip.eip: Creating...
module.devapp-base.aws_route_table_association.pub-rt-ac[1]: Creating...
module.devapp-base.aws_route_table_association.pub-rt-ac[1]: Creation complete after 0s [id=rtbassoc-0970fe50f4ba23581]
module.devapp-base.aws_route_table_association.pub-rt-ac[0]: Creating...
module.devapp-base.aws_route_table_association.pub-rt-ac[0]: Creation complete after 0s [id=rtbassoc-0190f0b7180b4b2c4]
module.elb.aws_alb.alb: Creating...
module.devapp-base.aws_eip.eip: Creation complete after 0s [id=eipalloc-09ce39da81cfcbd66]
module.devapp-base.aws_nat_gateway.nat: Creating...
module.iam.aws_iam_role_policy_attachment.ssm-policy-to-codedeploy-ec2-role: Creation complete after 1s [id=devapp-codedeploy-ec2-role-20201207144037536200000001]
module.iam.aws_iam_role_policy_attachment.s3-readonly-policy-to-codedeploy-ec2-role: Creation complete after 1s [id=devapp-codedeploy-ec2-role-20201207144037536200000002]
module.iam.aws_iam_role_policy_attachment.codedeploy-policy-to-codedeploy-ec2-role: Creation complete after 1s [id=devapp-codedeploy-ec2-role-20201207144037608100000003]
module.iam.aws_iam_role_policy_attachment.ssm-policy-to-ssm-ec2-role: Creation complete after 7s [id=devapp-ssm-ec2-role-20201207144038019200000005]
module.iam.aws_iam_role_policy_attachment.admin-policy-admin-ec2-role: Creation complete after 7s [id=devapp-admin-ec2-role-20201207144037890800000004]
module.iam.aws_iam_instance_profile.codedeploy-ec2-profile: Creation complete after 7s [id=devapp-codedeploy-ec2-profile]
module.iam.aws_iam_instance_profile.ssm-ec2-profile: Creation complete after 8s [id=devapp-ssm-ec2-profile]
module.iam.aws_iam_instance_profile.admin-ec2-profile: Creation complete after 8s [id=devapp-admin-ec2-profile]
module.elb.aws_alb.alb: Still creating... [10s elapsed]
module.devapp-base.aws_nat_gateway.nat: Still creating... [10s elapsed]
module.elb.aws_alb.alb: Still creating... [20s elapsed]
module.devapp-base.aws_nat_gateway.nat: Still creating... [20s elapsed]
module.elb.aws_alb.alb: Still creating... [30s elapsed]
module.devapp-base.aws_nat_gateway.nat: Still creating... [30s elapsed]
module.elb.aws_alb.alb: Still creating... [40s elapsed]
module.devapp-base.aws_nat_gateway.nat: Still creating... [40s elapsed]
module.elb.aws_alb.alb: Still creating... [50s elapsed]
module.devapp-base.aws_nat_gateway.nat: Still creating... [50s elapsed]
module.elb.aws_alb.alb: Still creating... [1m0s elapsed]
module.devapp-base.aws_nat_gateway.nat: Still creating... [1m0s elapsed]
module.elb.aws_alb.alb: Still creating... [1m10s elapsed]
module.devapp-base.aws_nat_gateway.nat: Still creating... [1m10s elapsed]
module.elb.aws_alb.alb: Still creating... [1m20s elapsed]
module.devapp-base.aws_nat_gateway.nat: Still creating... [1m20s elapsed]
module.elb.aws_alb.alb: Still creating... [1m30s elapsed]
module.devapp-base.aws_nat_gateway.nat: Still creating... [1m30s elapsed]
module.elb.aws_alb.alb: Still creating... [1m40s elapsed]
module.devapp-base.aws_nat_gateway.nat: Still creating... [1m40s elapsed]
module.elb.aws_alb.alb: Still creating... [1m50s elapsed]
module.devapp-base.aws_nat_gateway.nat: Still creating... [1m50s elapsed]
module.devapp-base.aws_nat_gateway.nat: Creation complete after 1m55s [id=nat-02b3c04ccde0db627]
module.devapp-base.aws_route_table.rt: Creating...
module.devapp-base.aws_route_table.rt: Creation complete after 1s [id=rtb-04b64a1830a996112]
module.devapp-base.aws_route_table_association.rt-ac[0]: Creating...
module.devapp-base.aws_route_table_association.rt-ac[1]: Creating...
module.devapp-base.aws_route_table_association.rt-ac[1]: Creation complete after 0s [id=rtbassoc-0f0678b6c9f2014fa]
module.devapp-base.aws_route_table_association.rt-ac[0]: Creation complete after 0s [id=rtbassoc-01181dfefa1ef3258]
module.elb.aws_alb.alb: Still creating... [2m0s elapsed]
module.elb.aws_alb.alb: Still creating... [2m10s elapsed]
module.elb.aws_alb.alb: Still creating... [2m20s elapsed]
module.elb.aws_alb.alb: Still creating... [2m30s elapsed]
module.elb.aws_alb.alb: Still creating... [2m40s elapsed]
module.elb.aws_alb.alb: Creation complete after 2m42s [id=arn:aws:elasticloadbalancing:ap-northeast-2:144149479695:loadbalancer/app/devapp-an2-p-base-alb/66f25c88beaec8c3]
module.elb.aws_alb_listener.alb-listener443: Creating...
module.elb.aws_alb_listener.alb-listener443: Creation complete after 0s [id=arn:aws:elasticloadbalancing:ap-northeast-2:144149479695:listener/app/devapp-an2-p-base-alb/66f25c88beaec8c3/b7814a0f0b22b5d8]

Apply complete! Resources: 30 added, 0 changed, 0 destroyed.
```
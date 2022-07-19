terraform {
  required_version = "~> 1.1.0"

  /*
  backend "s3" {
    bucket          = "terraform-space-tfstate"
    key             = "devapp-base/terraform.tfstate"
    region          = "ap-northeast-2"
    dynamodb_table  = "terraform-space-tfstate"
    encrypt         = false
    acl             = "bucket-owner-full-control"
  }
  */
}

/**
 * You have to provide IAM access-token which have a authorization for provisioning infrastructure.
 * aws configure --profile terra
 */
provider "aws" {
  profile = "terra"
  region  = "ap-northeast-2"
}

module "vpc" {
  source = "./modules/vpc"

  extra_tags      = local.extra_tags
  resrc_prefix_nm = local.resrc_prefix_nm
}

module "elb" {
  source = "./modules/elb"

  vpc_id     = module.vpc.vpc_id
  app_nm     = module.devapp-base.app_nm
  pub_sn_ids = module.devapp-base.pub_sn_ids

  extra_tags      = local.extra_tags
  resrc_prefix_nm = local.resrc_prefix_nm
}

module "iam" {
  source = "./modules/iam"

  project_name = var.project_name
  env_name     = var.env_name
}

module "devapp-base" {
  source = "./services/devapp-base"

  vpc_id = module.vpc.vpc_id

  project_name    = var.project_name
  extra_tags      = local.extra_tags
  resrc_prefix_nm = local.resrc_prefix_nm
}

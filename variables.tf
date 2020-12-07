variable "project_name" {
  description = "project name is usally account's project name or platform name"
  type = string
  default = "devapp"
}

variable "region_nm" {
  description = "region alias or AWS"
  type = string
  default = "an2"
}

variable "env_name" {
  description = "Runtime Environment such as develop, stage, production"
  type = string
  default = "p"
}

variable "owner" {
  description = "Runtime Environment such as develop, stage, production"
  type = string
  default = "symplesims@ggmail.com"
}

variable "team_name" {
  description = "team name of DevOps"
  type = string
  default = "devops-1"
}
variable "cost_center" {
  description = "CostCenter"
  type = string
  default = "78925"
}
variable "compliance" {
  description = "compliance (HIPAA)"
  type = string
  default = "HIPAA"
}

variable "auto_stop" {
  description = "AutoStop"
  type = string
  default = "false"
}

variable "key-pair" {
  type = string
  default = "devapp-an2-p-keypair"
}

locals {
  resrc_prefix_nm = "${var.project_name}-${var.region_nm}-${var.env_name}"

  extra_tags = {
    "Proejct" = var.project_name
    "Owner" = var.owner
    "Team" = var.team_name
    "Env" = var.env_name
    "CostCenter" = var.cost_center
  }

}
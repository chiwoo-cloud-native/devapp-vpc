variable "app_nm" {
  type = string
}

variable "resrc_prefix_nm" {
  type = string
}

variable "extra_tags" {
}

# vpc
variable "vpc_id" {
  type = string
}

# opsflex base subnet ids
variable "pub_sn_ids" {
  type = list(string)
}
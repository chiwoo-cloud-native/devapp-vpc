variable "resrc_prefix_nm" {
  type = string
}

variable "extra_tags" {
}

# vpc cidr block
variable "vpc_cidr_block" {
  description = "cidr block of vpc"
  type = string
  default = "10.10.0.0/16"
}


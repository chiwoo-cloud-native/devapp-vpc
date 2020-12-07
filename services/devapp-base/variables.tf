variable "app_nm" {
  type = string
  default = "base"
}

variable "project_name" {
  type = string
}

variable "resrc_prefix_nm" {
  type = string
}

variable "extra_tags" {
}

variable "vpc_id" {
  type = string
}

# base public subnet
variable "pub_subnet" {
  description = "devapp base subnets"
  type = list(map(string))
  default = [
    {
      cidr_block = "10.10.1.0/24",
      availability_zone = "ap-northeast-2a",
      Name = "1a-sn"
    },
    {
      cidr_block = "10.10.2.0/24",
      availability_zone = "ap-northeast-2c",
      Name = "1c-sn"
    }
  ]
}

# base private subnet
variable "app_subnet" {
  description = "devapp base subnets"
  type = list(map(string))
  default = [
    {
      cidr_block = "10.10.21.0/24",
      availability_zone = "ap-northeast-2a",
      Name = "1a-sn"
    },
    {
      cidr_block = "10.10.22.0/24",
      availability_zone = "ap-northeast-2c",
      Name = "1c-sn"
    }
  ]
}

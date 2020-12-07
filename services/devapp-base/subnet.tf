resource "aws_subnet" "pub-sn" {
  vpc_id                    = var.vpc_id
  count                     = length(var.pub_subnet)
  cidr_block                = lookup(var.pub_subnet[count.index], "cidr_block")
  availability_zone         = lookup(var.pub_subnet[count.index], "availability_zone")

  map_public_ip_on_launch   = true

  tags = merge(map(
    "Name", "${var.resrc_prefix_nm}-pub-${lookup(var.app_subnet[count.index], "Name")}"
  ), var.extra_tags)

}

resource "aws_subnet" "sn" {
  vpc_id                    = var.vpc_id
  count                     = length(var.app_subnet)
  cidr_block                = lookup(var.app_subnet[count.index], "cidr_block")
  availability_zone         = lookup(var.app_subnet[count.index], "availability_zone")

  map_public_ip_on_launch   = false

  tags = merge(map(
    "Name", "${var.resrc_prefix_nm}-${var.app_nm}-${lookup(var.app_subnet[count.index], "Name")}"
  ), var.extra_tags)

}

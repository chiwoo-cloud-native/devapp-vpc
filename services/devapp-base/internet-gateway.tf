resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = merge(map(
    "Name", "${var.resrc_prefix_nm}-igw"
  ), var.extra_tags)

}
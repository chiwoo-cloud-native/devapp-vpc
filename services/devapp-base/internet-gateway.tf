resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = merge(
    { Name = "${var.resrc_prefix_nm}-igw" },
    var.extra_tags)

}

resource "aws_eip" "eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.igw]

  tags = merge({ Name = "${var.resrc_prefix_nm}-eip" },
    var.extra_tags)

}

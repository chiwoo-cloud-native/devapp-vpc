resource "aws_route_table" "pub-rt" {
  vpc_id       = var.vpc_id
  depends_on   = [ aws_internet_gateway.igw ]

  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = aws_internet_gateway.igw.id
  }

  tags = merge(map(
    "Name", "${var.resrc_prefix_nm}-pub-rt"
  ), var.extra_tags)

}

resource "aws_route_table_association" "pub-rt-ac" {
  count           = length(aws_subnet.pub-sn)

  subnet_id       = aws_subnet.pub-sn.*.id[count.index]
  route_table_id  = aws_route_table.pub-rt.*.id[0]
}


resource "aws_route_table" "rt" {
  vpc_id       = var.vpc_id
  depends_on   = [ aws_nat_gateway.nat ]

  route {
    cidr_block  = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = merge(map(
    "Name", "${var.resrc_prefix_nm}-${var.app_nm}-rt"
  ), var.extra_tags)

}

resource "aws_route_table_association" "rt-ac" {
  count           = length(aws_subnet.sn)

  subnet_id       = aws_subnet.sn.*.id[count.index]
  route_table_id  = aws_route_table.rt.*.id[0]
}



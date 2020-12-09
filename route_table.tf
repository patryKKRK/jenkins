resource "aws_route_table" "internet_gateway_route" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "ig_association1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.internet_gateway_route.id
}
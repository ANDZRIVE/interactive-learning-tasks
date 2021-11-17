resource "aws_eip" "example" {
  vpc      = true
}

resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.example.id
  subnet_id     = aws_subnet.public_subnet1.id
  tags       = local.common_tags
}

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private3" {
  subnet_id      = aws_subnet.subnet3.id
  route_table_id = aws_route_table.private.id
}
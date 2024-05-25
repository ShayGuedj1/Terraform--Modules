resource "aws_route_table" "public-rt-project" {
  vpc_id = aws_vpc.vpc-project.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-project.id
  }
  tags = {
    Name = "public-rt-project"
  }
}

resource "aws_route_table_association" "public-rt-assoc-project" {
  subnet_id = aws_subnet.subnet-project.id
  route_table_id = aws_route_table.public-rt-project.id
}
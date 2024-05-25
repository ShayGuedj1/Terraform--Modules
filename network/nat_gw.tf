resource "aws_eip" "nat_eip-project" {
  //vpc = true
  tags = {
    Name = "nat_eip-project"
  }
}

resource "aws_nat_gateway" "natGW-project" {
  allocation_id = aws_eip.nat_eip-project.id
  subnet_id = aws_subnet.subnet-project.id
  tags = {
    Name = "netGW-project"
  }
}
resource "aws_internet_gateway" "igw-project" {
  vpc_id = aws_vpc.vpc-project.id
  tags = {
    Name = "igw-project"
  }
}
resource "aws_subnet" "subnet-project" {
  vpc_id = aws_vpc.vpc-project.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "subnet-project"
  }
}

/*output "subnet_id" {
  value = aws_subnet.subnet-project.id
}*/
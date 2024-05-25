resource "aws_vpc" "vpc-project" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc-project"
  }
}

/*output "vpc_id" {
  value = "aws_vpc.vpc-project.id"
}*/
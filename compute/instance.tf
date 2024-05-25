//variable "vpc_id" {}

//variable "subnet_id" {}

//variable "security_group_id" {}

resource "aws_instance" "project" {
  ami = "ami-0cd59ecaf368e5ccf"
  instance_type = "t2.micro"
  subnet_id = var.subnet_id
  security_groups = [var.security_group_id]
  tags = {
    Name = "project"
  }
}
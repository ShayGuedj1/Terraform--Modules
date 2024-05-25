output "vpc_id" {
  value = aws_vpc.vpc-project.id
}

output "subnet_id" {
  value = aws_subnet.subnet-project.id
}

output "security_group_id" {
  value = aws_security_group.secG-project.id
}


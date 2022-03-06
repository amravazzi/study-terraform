output "vpc_id" {
  value = aws_vpc.k8s-vpc.id
}

output "subnet_ids" {
  value = aws_subnet.subnets[*].id
}
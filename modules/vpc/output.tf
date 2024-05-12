output "vpc_id" {
value = aws_vpc.nexus_vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.nexus_vpc.cidr_block
}


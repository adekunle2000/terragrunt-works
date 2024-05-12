output "public_rt" {
  value = aws_route_table.public_rt.id
}

output "private_rt" {
  value = "aws_route_table.private_rt.id"
}

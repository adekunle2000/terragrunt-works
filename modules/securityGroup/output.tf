output "Public_security_group" {
  value = aws_security_group.Public_security_group.id
}

output "private_security_group" {
  value = aws_security_group.Private_security_group.id
}

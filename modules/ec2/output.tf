 output "public_instance" {
   value = aws_instance.public_instance.*.id
 }

output "public_instance_ip" {
value = aws_instance.public_instance.*.public_ip
}


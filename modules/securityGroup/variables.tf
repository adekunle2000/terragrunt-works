variable "vpc_id" {
  description = "vpc id for security_group"
}

variable "public_sg_name" {
  description = "name for security_group"
}

variable "private_sg_name" {
  description = "name for security_group"
}

variable "pub_sg_cidr_blocks" {
  description = "cidr for security_group"
}

variable "pvt_sg_ports" {
  description = "ports for security_group"
}

variable "pvt_sg_protocol" {
  description = "protocol for security_group"
}

variable "vpc_cidr_block" {
  type = list(string)
}

variable "additional_tags" {
  default = {}
  type    = map(any)
}


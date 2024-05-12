variable "region" {
  type = string
}

variable "vpc_cidr" {
  type        = string
  description = "vpc cider block"
}

variable "vpc_name" {
  type = string
}

variable "enable_dns_hostname" {
  type        = bool
  description = "dns hostname"
  default     = true
}

variable "vpc_instance_tenancy" {
  type        = string
  description = "vpc instance tenancy"
  default     = "default"
}

variable "public_subnets_cidr" {
  type = list(any)
}

variable "private_subnets_cidr" {
  type = list(any)
}

variable "azs" {
  type = list(any)
}

variable "igw_name" {
  description = "specify name for the igw"
}

variable "nat_name" {
  description = "specify name for the igw"
}

variable "rt_cidr_block" {
  description = "cidr for public rt"
}

variable "public_rt_name" {
  description = "specify name for public route_table"
}

variable "private_rt_name" {
  description = "specify name for public route_table"
}

variable "public_sg_name" {
  description = "name for security_group"
}

variable "private_sg_name" {
  description = "name for security_group"
}

variable "pvt_sg_ports" {
  description = "ports for security_group"
}

variable "pvt_sg_protocol" {
  description = "protocol for security_group"
}

variable "pub_sg_cidr_blocks" {
  description = "cidr for security_group"
  type        = list(any)
}

#variable "pub_ami_id" {
#  description = "ami for instance"
#}

variable "ami_id" {
  description = "ami for instance"
}

variable "public_instance_name" {
  description = "name for instance"
}

variable "instance_type" {
  description = "instance type for instance"
}

variable "key_name" {
  description = "key for instance"
}

variable "additional_tags" {
  description = "Additional tags for the Instance"
  type        = map(any)
  default     = {}
}



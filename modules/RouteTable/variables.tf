variable "vpc_id" {
  description = "vpc id for subnet"
}

variable "rt_cidr_block" {
  description = "cidr for route_table"
}

variable "gateway_id" {
  description = "gateway id for route_table"
}

variable "nat_gateway_id" {
  description = "nat gateway id for route table"
}

variable "public_rt_name" {
  description = "specify name for public route_table"
}

variable "private_rt_name" {
  description = "specify name for public route_table"
}

variable "public_subnet_id" {
  type = list(any)
  description = "public subnet id for public route table"
}

variable "public_subnets_cidr" {
  description = "public subnet cidr for public route table"
}

variable "private_subnet_id" {
  description = "private subnet id for private route table"
  type = list(any)
}

variable "private_subnets_cidr" {
  description = "private subnet cidr for private route table"
}

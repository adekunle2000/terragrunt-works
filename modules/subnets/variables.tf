variable "vpc_id" {
  description = "vpc id for subnet"
}

variable "public_subnets_cidr" {
description = "cidr for public subnets"
}

variable "private_subnets_cidr" {
  description = "cidr for private subnets"
}

variable "azs" {
  description = "azs for subnets"
}

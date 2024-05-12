variable "vpc_cidr_block" {
  type        = string
  description = "vpc CIDR block"
}

variable "vpc_name" {
  type        = string
  description = "vpc Name"
}

variable "dns_hostnames" {
  type        = bool
  description = "enable or disable dns hostnames"
}
variable "vpc_tenancy" {
  type        = string
  description = "tenancy type"
}

variable "additional_tags" {
  default = {}
  type    = map(any)
}



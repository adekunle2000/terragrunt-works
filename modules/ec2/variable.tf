variable "ami_id" {
  description = "ami for instance"
}

variable "instance_type" {
  description = "instance type for instance"
}

variable "public_subnet_id" {
  description = "subnet id for instance"
  type = list(any)
}

variable "public_instance_name" {
  description = "name for instance"
}


variable "key_name" {
  description = "key for instance"
}

variable "public_instance_sg" {
  description = " Public Instance Security Group"
}

variable "additional_tags" {
  description = "A map of tags to be added to instance"
  type        = map(any)
  default     = {}
}

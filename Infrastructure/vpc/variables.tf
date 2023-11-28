# Declare Access key & Secret Key Variable 
variable "access_key" {
  type      = string
  sensitive = true
}

variable "secret_key" {
  type      = string
  sensitive = true
}

# Declare Region Variable
variable "aws_region" {
  type = sring  
}

# VPC Variables 
variable "aws_vpc_cidr" {
  type = string
}

variable "access_key" {
    type = string
}

variable "secret_key" {
    type = string
}

resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr           # Example: 172.16.0.0/16
  instance_tenancy = "default"

  tags = {
    Name = "my-custom-vpc"
  }
}

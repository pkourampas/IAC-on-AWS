terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.50"
    }
  }
}

# AWS Provider - Passing Region as Variable
provider "aws" {
  region     = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}

# Create a custom VPC in AWS 
resource "aws_vpc" "main-vpc" {
  cidr_block       = var.aws_vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "primary"
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main-vpc.id

  tags = {
    Name = "Primary-igw"
  }
}

# Public Subnet Config
resource "aws_subnet" "public-subnet" {
  vpc_id                  = aws_vpc.main-vpc.id
  cidr_block              = cidrsubnet(var.aws_vpc_cidr, 8)
  map_public_ip_on_launch = true
  availability_zone       = "${var.aws_region}a"

  tags = {
    "Name" = "public-subnet-1"
  }
}


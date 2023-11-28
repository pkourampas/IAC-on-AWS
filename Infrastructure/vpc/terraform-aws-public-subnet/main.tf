# Public Subnet Config
resource "aws_subnet" "public-subnet" {
  vpc_id                  = aws_vpc.main-vpc.id
  cidr_block              = var.main-vpc-public-subnet-1
  map_public_ip_on_launch = true
  availability_zone       = "${var.aws_region}a"

  tags = {
    "Name" = "public-subnet-1"
  }
}

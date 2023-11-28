resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id                   # Associate the Internet Gateway with your VPC

  tags = {
    Name = "igw"
  }
}

# Public Subnet 1
resource "aws_subnet" "public_sub1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "192.168.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = { Name = "public-subnet-a" }
}

# Public Subnet 2
resource "aws_subnet" "public_sub2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "192.168.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = { Name = "public-subnet-b" }
}

# Private Subnet 1
resource "aws_subnet" "private_sub1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "192.168.3.0/24"
  availability_zone = "us-east-1a"

  tags = { Name = "private-subnet-a" }
}

# Private Subnet 2
resource "aws_subnet" "private_sub2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "192.168.4.0/24"
  availability_zone = "us-east-1b"

  tags = { Name = "private-subnet-b" }
}
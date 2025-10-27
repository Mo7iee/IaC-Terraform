resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_sub2.id 
  depends_on    = [aws_internet_gateway.main]

  tags = {
    Name = "nat-gateway"
  }
}

resource "aws_eip" "nat" {

  tags = {
    Name = "nat-eip"
  }
}
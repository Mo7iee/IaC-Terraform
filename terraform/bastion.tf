resource "aws_instance" "bastion" {
  ami                    = "ami-0c02fb55956c7d316"  # Amazon Linux 2 AMI (us-east-1)
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_sub1.id  
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name               = "key"          
  associate_public_ip_address = true

  tags = {
    Name = "bastion-host"
  }
}

# Security Group for Bastion Host
resource "aws_security_group" "bastion_sg" {
  name        = "bastion-sg"
  description = "Allow SSH access to bastion host"
  vpc_id      = aws_vpc.vpc.id

  # Allow inbound SSH from your IP
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "bastion-sg"
  }
}
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


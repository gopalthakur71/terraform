
resource "aws_instance" "web" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  key_name = "k8s"
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  subnet_id = aws_subnet.main2.id
 

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_key_pair" "deployer" {
  public_key = var.public_key
}

resource "aws_instance" "jenkins" {
  ami             = var.ami
  instance_type   = var.instance_type
  associate_public_ip_address = true
  subnet_id       = aws_subnet.public1.id
  key_name        = aws_key_pair.deployer.key_name
  user_data     = file("./scripts/install_jenkins.sh")
  security_groups = [aws_security_group.ssh.id, aws_security_group.http8080.id]
}
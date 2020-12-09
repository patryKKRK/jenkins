resource "aws_security_group" "ssh" {
  name   = "SSH"
  vpc_id = aws_vpc.vpc1.id
  ingress {
    description = "allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "http8080" {
  name   = "HTTP8080"
  vpc_id = aws_vpc.vpc1.id
  ingress {
    description = "allow HTTP 8080"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "egress_all_allow" {
  vpc_id = aws_vpc.vpc1.id
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
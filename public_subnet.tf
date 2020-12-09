resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = var.public_cidr
  availability_zone = "eu-central-1a"
  }
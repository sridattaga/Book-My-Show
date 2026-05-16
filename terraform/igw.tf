resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.bms_vpc.id
}

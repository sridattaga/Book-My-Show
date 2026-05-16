resource "aws_subnet" "public" {
  count = 2
  vpc_id = aws_vpc.bms_vpc.id
  cidr_block = cidrsubnet("10.0.0.0/24", 8, count.index)
  availability_zone = element(["ap-southeast-1a","ap-southeast-1b"], count.index)
  map_public_ip_on_launch = true
}

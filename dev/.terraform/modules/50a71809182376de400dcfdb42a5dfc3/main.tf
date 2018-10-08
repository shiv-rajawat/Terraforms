resource "aws_nat_gateway" "gw" {
  allocation_id = "${var.eipid}"
  subnet_id     = "${var.subnetid}"

  tags {
      Name = "${var.natName}"
  }
}

resource "aws_vpn_gateway" "vpn_gw" {
  vpc_id = "${var.vpcid}"
  availability_zone = "${var.availability_zone}"

  tags {
    Name = "${var.vpnName}"
  }
}

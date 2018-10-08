resource "aws_internet_gateway" "My_VPC_GW" {
  vpc_id       = "${var.vpcid}"
tags {
        Name = "${var.gatewayName}"
    }
}

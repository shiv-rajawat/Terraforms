resource "aws_route_table" "My_VPC_route_table" {
      vpc_id = "${var.vpcid}"

tags {
        Name = "${var.routeName}"
    }
}

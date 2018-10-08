resource "aws_route" "r" {
  route_table_id            = "${var.route_table_id}"
  destination_cidr_block    = "${var.destination_cidr_block}"
  nat_gateway_id = "${var.nat_gateway_id}"
  #depends_on                = ["aws_route_table.testing"]
}

resource "aws_security_group" "My_Security_Group" {
  vpc_id       = "${var.vpc_id}"
  name         = "${var.security_group_name}"
  description  = "${var.description}"
ingress {
    cidr_blocks = "${var.sg_ingress_cidr_block}"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }
}

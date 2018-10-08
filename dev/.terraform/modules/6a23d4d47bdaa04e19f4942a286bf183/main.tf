resource "aws_security_group" "My_VPC_Security_Group" {
  vpc_id       = "${var.vpcid}"
  name         = "${var.groupName}"
  description  = "${var.description}"
ingress {
    cidr_blocks = "${var.ingressCIDRblock}"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }
tags = {
        Name = "${var.nameTag}"
  }
}

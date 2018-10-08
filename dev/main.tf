##Dev configurations
##This is a sample configuration for dev, which employs the usage of all the modules present.
## If more resources are required of any type, call that module again as done in this sample configuration.
## Similarly delete invokation of any module which isn't required from  below.

## Creates a VPC using the VPC module.
module "vpc" {
  source = "../modules/vpc"
  cidr_block = "${var.vpc_cidr_block}"
  vpc_name = "${var.vpc_name}"
}

## Creates a subnet inside the vpc created.
module "subnets" {
  source = "../modules/subnets"
  cidr_block = "${var.subnet_cidr_block}"
  availability_zone = "${var.availability_zone}"
  vpc_id = "${module.vpc.vpc_id}"
  subnet_name = "${var.subnet_name}"
}

## Creates a route.
module "route" {
  source = "../modules/route"
  route_table_id = "${module.routetable.route_table_id}"
  destination_cidr_block = "${var.destination_cidr_block}"
  nat_gateway_id = "${module.nat.nat_gateway_id}"
}

## Creates a security group and attach it to the vpc created.
module securitygroup{
  source = "../Modules/securitygroup"
  security_group_name    = "${var.security_group_name}"
  description  = "${var.description}"
  vpc_id       = "${module.vpc.vpc_id}"
  sg_ingress_cidr_block = "${var.sg_ingress_cidr_block}"
}

## Creates an internet gateway and attach it to the created vpc.
module internetgateway{
  source = "../Modules/internetgateway"
  vpc_id       = "${module.vpc.vpc_id}"
  internet_gateway_name = "${var.internet_gateway_name}"
}

## Creates a route table for the VPC created.
module routetable{
  source = "../Modules/routetable"
  vpc_id       = "${module.vpc.vpc_id}"
  route_table_name = "${var.route_table_name}"
}

## Creates a NAT gateway in the created subnet. Note: The allocation id/ eip id or client token is required.
module nat{
  source = "../Modules/nat"
  eipid = "${var.eipid}"
  subnet_id    = "${module.subnets.subnet_id}"
  natgw_name= "${var.natgw_name}"
}

## Creates a vpn gateway in the VPC created.
module vpnGateway{
  source = "../Modules/vpnGateway"
  vpc_id = "${module.vpc.vpc_id}"
  availability_zone = "${var.availability_zone}"
  vpngw_name = "${var.vpngw_name}"
}

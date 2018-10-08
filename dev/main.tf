##Dev configurations


module "vpc" {
  source = "../modules/vpc"
  cidr_block = "${var.vpc_cidr_block}"
  vpc_name = "${var.vpc_name}"
}

module "subnets" {
  source = "../modules/subnets"
  cidr_block = "${var.subnet_cidr_block}"
  availability_zone = "${var.availability_zone}"
  vpc_id = "${module.vpc.vpc_id}"
  subnet_name = "${var.subnet_name}"
}

module "route" {
  source = "../modules/route"
  route_table_id = "${module.routetable.route_table_id}"
  destination_cidr_block = "${var.destination_cidr_block}"
  nat_gateway_id = "${module.nat.nat_gateway_id}"
}

module securitygroup{
  source = "../Modules/securitygroup  "

  groupName         = "${var.groupName}"
  description  = "${var.description}"
  vpcid       = "${module.vpc.vpc_id}"
  ingressCIDRblock = "${var.ingressCIDRblock}"
  nameTag = "${var.nameTag}"
}

module internetgateway{
  source = "../Modules/internetgateway"

  vpcid       = "${module.vpc.vpc_id}"
  gatewayName = "${var.gatewayName}"
}

module routetable{
  source = "../Modules/routetable"

  vpcid       = "${module.vpc.vpc_id}"
  routeName = "${var.routeName}"
}

module nat{
  source = "../Modules/nat"

  eipid = "${var.eipid}"
  subnetid    = "${module.subnets.subnet_id}"
  natName = "${var.natName}"
}

module vpnGateway{
  source = "../Modules/vpnGateway"

  vpcid = "${module.vpc.vpc_id}"
  availability_zone = "${var.availability_zone}"
  vpnName = "My-vpn-shiv"

}

## This files declares all the parameters used for setting up configurations for dev. The values are given through the *.tfvars file.

variable "vpc_cidr_block"{
  type = "string"
  description = "The CIDR block for the VPC."
}

variable "vpc_name"{
  type = "string"
  description = "The name of the VPC."
}

variable "subnet_cidr_block"{
  type = "string"
  description = "The CIDR block for the subnet. It must be a subset of VPC's CIDR block."
}

variable "subnet_name"{
  type = "string"
  description = "The name of the subnet."
}

variable "availability_zone"{
  type = "string"
  description = "The availability zone for creating subnet. If more than one subnets are required, this variable can be changed to a type 'List' and accordingly changes to be made in *.tfvars file."
}

variable "destination_cidr_block"{
  type = "string"
  description = "The destination CIDR block for creating a route."
}

variable "security_group_name"{
  type = "string"
  description = "The name for the security group"
}

variable "description"{
  type = "string"
  description = "The description for the security group."
}

variable "sg_ingress_cidr_block" {
  type = "list"
  description = "The CIDR block for the ingress/inbound rule of the security group."
}

variable "internet_gateway_name"{
  type = "string"
  description = "The name for the internet gateway."
}

variable "route_table_name"{
  type = "string"
  description = "The name for the route table."
}

variable "eipid"{
  type = "string"
  description = "The allocation ID for creating the NAT gateway. There are alternatives to this EIP id. For more details see https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html"
}

variable "natgw_name"{
  type = "string"
  description = "The name for the NAT gateway."
}

variable "vpngw_name"{
  type = "string"
  description = "The name for the VPN gateway."
}

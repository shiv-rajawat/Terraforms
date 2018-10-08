variable "vpc_cidr_block"{
  type = "string"
}

variable "vpc_name"{
  type = "string"
}

variable "subnet_cidr_block"{
  type = "string"
}

variable "subnet_name"{
  type = "string"
}

variable "availability_zone"{
  type = "string"
}

variable "destination_cidr_block"{
  type = "string"
}

variable "groupName"{
  type = "string"
}

variable "nameTag"{
  type = "string"
}

variable "description"{
  type = "string"
}

variable "ingressCIDRblock" {
  type = "list"
}

variable "gatewayName"{
  type = "string"
}

variable "routeName"{
  type = "string"
}

variable "eipid"{
  type = "string"
}

variable "natName"{
  type = "string"
}

variable "vpnName"{
  type = "string"
}

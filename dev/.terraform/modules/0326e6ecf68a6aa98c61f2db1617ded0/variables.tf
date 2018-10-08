variable "security_group_name"{
  type = "string"
}

variable "description"{
  type = "string"
}

variable "vpc_id"{
  type = "string"
}

variable "sg_ingress_cidr_block" {
  type = "list"
}

variable "firewall" {
  type = map(object({
    name = string
    description = string
    cidr_blocks = string
  }))
  default = {
    "securityGroup1" = {
      description = "Security Group for iconectiv blocking all ingress"
      name = "secGroup-iconectiv-use2"
      cidr_blocks = "0.0.0.0/0"
    }
  }
}

variable "vpcendpoint" {
  type = map(object({
    vpc_endpoint_type = string
  }))
  default = {
    "vpcendpoint1" = {
      vpc_endpoint_type = "Gateway"
    }
  }
}


variable "vpc_id" {
}

variable "route_table_ids" {
}
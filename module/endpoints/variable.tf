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
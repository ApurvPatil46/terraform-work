variable "vpc" {
  type = map(object({
    cidr_block = string
    }))
    default = {
      "vpc_main" = {
        cidr_block = "172.16.0.0/16"    
    }
  }
}
# variable "route_table" {
#   type = map(object({
#     subnet_id = sring
#   }))
#   table1 = {
#     route_table
#   }
# }


variable "public_subnet" {
  type = map(object({
    cidr_block = string
    availability_zone = string
    map_public_ip_on_launch = string
  }))
  default = {
    "public_subnet1" = {
       cidr_block = "172.16.1.0/24"
       availability_zone = "us-east-1a"
       map_public_ip_on_launch = "true"
    }
    "public_subnet2" = {
       cidr_block = "172.16.2.0/24"
       availability_zone = "us-east-1b"
       map_public_ip_on_launch = "true"
    }
  }
}


variable "subnet" {
  type = map(object({
    cidr_block = string
    availability_zone = string
    map_public_ip_on_launch = string
  }))
  default = {
    "subnet1" = {
       cidr_block = "172.16.3.0/24"
       availability_zone = "us-east-1a"
       map_public_ip_on_launch = "false"
    }
    "subnet2" = {
       cidr_block = "172.16.4.0/24"
       availability_zone = "us-east-1b"
       map_public_ip_on_launch = "false"
    }
    "subnet3" = {
       cidr_block = "172.16.5.0/24"
       availability_zone = "us-east-1a"
       map_public_ip_on_launch = "false"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "../module/vpc/"
}

module "bucket" {
  source = "../module/bucket"
}

module "firewall" {
  source = "../module/firewall"
  vpc_id = module.vpc.vpc_output
  route_table_ids = module.vpc.vpc_output
  depends_on = [
    module.vpc
  ]
}
provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "../module/vpc/"
}

module "bucket" {
  source = "../module/bucket"
}

module "dynamodb" {
  source = "../module/dynamodb"
  dynamodb_name = var.dynamodb_name
}

module "endpoint" {
  source = "../module/endpoints"
}

module "sns" {
  source = "../module/sns"
}

module "firewall" {
  source = "../module/firewall"
  vpc_id = module.vpc.vpc_output
  route_table_ids = module.vpc.route_table_output
  depends_on = [
    module.vpc
  ]
}

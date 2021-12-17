# Creating Vpc Endpoint
resource "aws_vpc_endpoint" "security_group2" {
  for_each = var.vpcendpoint
  vpc_endpoint_type  = each.value["vpc_endpoint_type"]
  vpc_id = var.vpc_id
  # security_group_ids = [ aws_security_group.security_group1["securityGroup1"].id ]
  service_name = "com.amazonaws.us-east-1.dynamodb"
  route_table_ids = [ var.route_table_ids ]
}
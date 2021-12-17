#Creating SecurityGroup
resource "aws_security_group" "security_group1" {
  for_each = var.firewall
  name        = each.value["name"]
  description = each.value["description"]
  vpc_id = var.vpc_id
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [ "0.0.0.0/0" ] 
  }
}


#  iconectivVpcEndpointsSecGroup:
#     Type: AWS::EC2::SecurityGroup
#     Properties:
#       GroupDescription: Security Group for iconectiv VPC endpoints
#       GroupName: secGroup-iconectiv-vpce-use2
#       SecurityGroupEgress:
#         - IpProtocol: '-1'
#           CidrIp: 0.0.0.0/0
#       SecurityGroupIngress:
#         - IpProtocol: '-1'
#           FromPort: 443
#           ToPort: 443
#           SourceSecurityGroupId: !Ref iconectivSecurityGroup
#       VpcId: !Ref VpcId
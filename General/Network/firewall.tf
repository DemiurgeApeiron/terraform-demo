resource "aws_security_group" "ec2_backend" {
  provider    = aws.aws-west
  vpc_id      = module.vpc.vpc_cidr_block
  description = "Allow traffic for the ec2 balckend compute instances"
  name        = "inbound_ec2"

}

resource "aws_vpc_security_group_ingress_rule" "Allow_inbound_https_traffic_backend" {
  ip_protocol       = "https"
  provider          = aws.aws-west
  security_group_id = aws_security_group.inbound_ec2.id
  from_port         = 443
  to_port           = 443
  cidr_ipv4         = module.vpc.vpc_cidr_block

}

resource "aws_vpc_security_group_egress_rule" "Allow_outbound_https_traffic_backend" {
  ip_protocol       = "https"
  provider          = aws.aws-west
  security_group_id = aws_security_group.inbound_ec2.id
  from_port         = 443
  to_port           = 443
  cidr_ipv4         = module.vpc.vpc_cidr_block

}

resource "aws_security_group" "ec2_frontend" {
  provider    = aws.aws-west
  vpc_id      = module.vpc.vpc_cidr_block
  description = "Allow traffic for the ec2 balckend compute instances"

}

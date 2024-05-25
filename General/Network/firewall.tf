resource "aws_security_group" "inbound_ec2" {
  provider    = aws.aws-west
  vpc_id      = module.vpc.vpc_cidr_block
  description = "Allow inbound traffic for the ec2 compute instances"
  name        = "inbound_ec2"

}

resource "aws_vpc_security_group_ingress_rule" "Allow_https_traffic" {
  ip_protocol       = "https"
  provider          = aws.aws-west
  security_group_id = aws_security_group.inbound_ec2.id
  from_port         = 443
  to_port           = 443
  cidr_ipv4         = module.vpc.vpc_cidr_block

}

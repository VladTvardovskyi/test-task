resource "aws_security_group" "default" {
  name        = var.security_group_name
  description = "${var.security_group_name} group managed by Terraform"
  vpc_id = var.vpc_id
}
#Create outbound rules
resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "All egress traffic"
  security_group_id = aws_security_group.default.id
}
#Create inbound rules
resource "aws_security_group_rule" "tcp" {
  count             = var.tcp_ports == "default_null" ? 0 : length(split(",", var.tcp_ports))
  type              = "ingress"
  from_port         = split(",", var.tcp_ports)[count.index]
  to_port           = split(",", var.tcp_ports)[count.index]
  protocol          = "tcp"
  cidr_blocks       = var.cidrs
  description       = ""
  security_group_id = aws_security_group.default.id
}
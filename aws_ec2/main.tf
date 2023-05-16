resource "aws_instance" "ec2_bitmedia" {
  ami             = var.ami
  key_name        = var.key_name
  instance_type   = var.instance_type
  security_groups = var.security_groups
  subnet_id       =  var.subnet_id
}

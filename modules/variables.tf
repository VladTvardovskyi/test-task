variable "aws_key_name" {
  type    = string
  default = "test"
}
variable "aws_security_group_name" {
  type    = string
  default = "bitmedia"
}
variable "windows_ec2_count" {
  default = "2"
}

variable "aws_reg" {
  default = "eu-central-1"
}
variable "inst_count" {
  default = "1"
}
variable "ami" {
  default = "ami-0ec7f9846da6b0f61"
}

variable "working_dir"{
  default = "/home/vlad/terraform-aws-nginx/ansible"
}
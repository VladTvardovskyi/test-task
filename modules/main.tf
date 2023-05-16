provider "aws" {
  region = "eu-central-1"
}
module "vpc" {
  source              = "../aws_vpc/"
  cidr_vpc            = "10.0.0.0/16"
  cidr_subnet_public  = "10.0.1.0/24"
  cidr_subnet_private = "10.0.4.0/24"
}
#Create Template Security group
module "security_group" {
  source              = "../aws_sg/"
  vpc_id              = module.vpc.vpc_id
  name                = "bitmedia"
  tcp_ports           = "80,443,8080,22"
  cidrs               = ["0.0.0.0/0"]
  security_group_name = var.aws_security_group_name
}

module "ec2_instance" {
  source          = "../aws_ec2"
  ami             = var.ami
  key_name        = var.aws_key_name
  instance_type   = "t2.micro"
  security_groups = [module.security_group.sg_id]
  subnet_id       = module.vpc.public_subnet_id

}
module "run_playbook" {
  source = "../local_exec"
  working_dir = var.working_dir
  command = "sed -i '/\\[ec2\\]/a ${module.ec2_instance.public_dns}' inventories/hosts && ansible-playbook playbook.yaml -i inventories/hosts --private-key=/home/vlad/terraform-aws-nginx/data/test.pem"
  depends_on = [module.security_group, module.vpc]
}

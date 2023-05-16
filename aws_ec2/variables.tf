variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = ""
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = ""
}

variable "security_groups" {
  description = "Security group which will be attached to ec2"
  type        = list(string)
  default     = []
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = ""
}

variable "instance_count" {
  default = "1"
}

variable name {
  type        = list(string)
  default     = []

}

variable "instance_tags" {
  type    = list(any)
  default = ["Bitmedia"]
}
variable "region" {
  default = "eu-central-1"
}

variable "subnet_id"{
  default = ""
}
variable "public_ip"{
  default = ""
}

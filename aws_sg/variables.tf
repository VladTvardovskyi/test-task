variable "enabled" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  type        = bool
  default     = true
}
variable "name" {
  description = "Name to be used on all the resources as identifier"
  default     = ""
}
variable "tcp_ports" {
  type    = string
  default = "default_null"
}

variable "cidrs" {
  type = list(string)
}

variable "security_group_name" {}

variable "vpc_id"{}
data "aws_caller_identity" "self" {}
data "aws_region" "self" {}

variable "region" {
  default = "ap-northeast-1"
}

variable "env" {
  type   = string
}

variable "service_name" {
  default = "iesapuri"
}
variable "domain" {
  default = "iesapuri.com"
}

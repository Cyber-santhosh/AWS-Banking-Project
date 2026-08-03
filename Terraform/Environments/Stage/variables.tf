variable "vpc_cidr" {}
variable "environment" {}
variable "project_name" {}
variable "aws_region" {
  type        = string
  description = "The AWS Region to deploy resources into"
  default     = "us-east-1"
}

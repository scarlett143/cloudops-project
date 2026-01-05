variable "aws_region" {
  default = "ap-south-2"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "environment" {
  default = "prod"
}

variable "app_name" {
  default = "cloudops"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "db_password" {
  sensitive = true
}

variable "db_username" {
  default = "admin"
}

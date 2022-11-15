variable "aws_region" {
  description = "Deployed region definition"
  default     = "us-east-1"
}

variable "aws_server_name" {
  description = "Application name"
  default     = "server01"
}

variable "aws_bucket_name" {
  description = "Application name"
  default     = "bucket01"
}

variable "aws_env" {
  description = "Environment name"
  default     = "dev"
}

variable "aws_server_ami" {
  description = "Desired AWS AMI"
  default     = "ami-08c40ec9ead489470"
}

variable "aws_instance_type" {
  description = "EC2 Hardware configuration"
  default     = "t2.micro"
}

variable "aws_repo" {
  description = "Appplication repository"
  default     = "https://github.com/juliavpaiva/IaC-Trabalho-1"
}
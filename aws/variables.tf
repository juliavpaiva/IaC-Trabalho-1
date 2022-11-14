variable "region" {
  description = "Deployed region definition"
  default     = "us-east-1"
}

variable "name" {
  description = "Application name"
  default     = "server01"
}

variable "env" {
  description = "Environment name"
  default     = "prod"
}

variable "ami" {
  description = "Desired AWS AMI"
  default     = "ami-08c40ec9ead489470"
}

variable "instance_type" {
  description = "EC2 Hardware configuration"
  default     = "t2.micro"
}

variable "repo" {
  description = "Appplication repository"
  default     = "https://github.com/juliavpaiva/IaC-Trabalho-1"
}
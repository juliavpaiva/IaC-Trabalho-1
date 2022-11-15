variable "aws_region" {
  description = "Deployed region definition"
  default     = "us-east-1"
}

variable "aws_server_name" {
  description = "Application name"
  default     = "Server01"
}

variable "aws_env" {
  description = "Environment name"
  default     = "dev"
}

variable "aws_instance_type" {
  description = "EC2 Hardware configuration"
  default     = "t2.micro"
}

variable "aws_repo" {
  description = "Appplication repository"
  default     = "https://github.com/juliavpaiva/IaC-Trabalho-1"
}
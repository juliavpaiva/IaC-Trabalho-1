variable "aws_region" {
  description = "Deployed region definition"
  default     = "us-east-1"
}

variable "aws_bucket_name" {
  description = "Application name"
  default     = "bucket01IaCtrabalho1"
}

variable "aws_env" {
  description = "Environment name"
  default     = "dev"
}

variable "aws_repo" {
  description = "Appplication repository"
  default     = "https://github.com/juliavpaiva/IaC-Trabalho-1"
}
terraform {
  required_version = "v1.3.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.44.0"
    }
  }

  backend "s3" {}
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project   = "IaC Trabalho 1"
      ManagedBy = "Terraform"
      Owner     = "Julia Paiva"
    }
  }
}
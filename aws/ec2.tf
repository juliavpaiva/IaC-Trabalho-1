resource "aws_instance" "server01" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name        = var.name
    Environment = var.env
    Provisioner = "Terraform"
    Repository  = var.source
  }
}
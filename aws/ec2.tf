resource "aws_instance" "server01" {
  ami           = var.aws_server_ami
  instance_type = var.aws_instance_type

  tags = {
    Name        = var.aws_server_name
    Environment = var.aws_env
    Provisioner = "Terraform"
    Repository  = var.aws_repo
  }
}
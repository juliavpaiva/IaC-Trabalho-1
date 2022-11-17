data "aws_ami" "ubuntu" {
  owners      = ["amazon"]
  most_recent = true
  name_regex  = "Ubuntu"
}

resource "aws_instance" "server01" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.aws_instance_type

  user_data = file("./startup_script_server01.sh")

  tags = {
    Name = "Server01-${var.aws_env}"
    Env  = var.aws_env
    Type = var.aws_instance_type
  }
}
data "aws_ami" "ubuntu" {
  owners      = ["amazon"]
  most_recent = true
  name_regex  = "Ubuntu"
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.aws_instance_type

  tags = {
    Name = "${var.aws_env}: EC2"
    Env  = var.aws_env
    Type = var.aws_instance_type
  }
}
resource "aws_s3_bucket_acl" "bucket01" {
  bucket = "bucket01"
  acl    = "private"

  tags = {
    Name        = var.aws_bucket_name
    Environment = var.aws_env
    Provisioner = "Terraform"
    Repository  = var.aws_repo
  }
}
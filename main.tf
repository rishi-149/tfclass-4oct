provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-s3-bucket1409-${terraform.workspace}"
  acl = "private"

  tags = {
    name = "MyBucket-${terraform.workspace}"
    Environment = terraform.workspace
  }
}

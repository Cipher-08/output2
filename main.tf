provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}


variable "aws_access_key" {
  type = string
  default = ""
}

variable "aws_secret_key" {
  type = string
  default = ""
}

variable "bucket_name" {
  type = string
  default = ""
}

resource "aws_s3_bucket" "bucket-env0-3232" {
  bucket = "${var.bucket_name}-env0343"
  tags = {
    Name = "Bucket 2"
  }
}

provider "aws" {
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
  region     = "us-east-1"

  s3 {
    endpoint = "http://localhost:4566"
    force_path_style = true
  }
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}

provider "aws" {
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
  region     = "us-east-1"
  endpoint   = "http://localhost:4566"  # Localstack endpoint
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}

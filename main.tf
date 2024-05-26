provider "aws" {
  alias      = "localstack"
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
  region     = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}

resource "aws_s3_bucket" "example" {
  provider = aws.localstack
  bucket   = var.bucket_name
}

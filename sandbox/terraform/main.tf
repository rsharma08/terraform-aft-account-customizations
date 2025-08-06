provider "aws" {
  region = "eu-west-2"
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "AFT Sandbox Bucket"
    Environment = "sandbox"
    ManagedBy   = "AFT"
  }

  lifecycle {
    prevent_destroy = true
  }
}

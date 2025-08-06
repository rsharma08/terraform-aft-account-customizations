provider "aws" {
  region = "eu-west-2"  # or any other appropriate region
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "AFT Sandbox Bucket"
    Environment = "sandbox"
    ManagedBy   = "AFT"
  }
}

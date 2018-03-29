provider "aws" {
  region = "us-east-1"
  #shared_credentials_file = "/Users/tf_user/.aws/creds"
  profile = "packer_test"
}


resource "aws_s3_bucket" "terraform_state" {
  bucket = "bohica-terraform-state"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

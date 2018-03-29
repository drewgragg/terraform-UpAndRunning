provider "aws" {
  region = "${var.region}"
  #shared_credentials_file = "/Users/tf_user/.aws/creds"
  profile = "packer_test"
}


#resource "aws_s3_bucket" "terraform_state" {
#  bucket = 

terraform {
  backend "s3" {
    region  = "${var.region}"
    bucket  = "${var.s3bucket}"
    key     = "global/s3/terraform.tfstate"
    encrypt = true
  }

  versioning {
    enabled = true
  }

  #lifecycle {
  #  prevent_destroy = true
  #}
}

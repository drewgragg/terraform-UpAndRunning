provider "aws" {
  region = "us-east-1"
  #shared_credentials_file = "/Users/tf_user/.aws/creds"
  profile                 = "packer_test"
}

resource "aws_instance" "example" {
  ami = "ami-40d28157"
  instance_type = "t2.micro"
  tags {
    Name = "terraform-example1"
  }
}

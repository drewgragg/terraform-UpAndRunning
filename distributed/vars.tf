
variable "region" {
  description = "The default AWS region for the resource provisioning"
  default = "eu-east-1"
}

variable "s3bucket" {
  description = "AWS S3 bucket where the terraform.tfstate is located"
  default = "bohica-terraform-state"
}
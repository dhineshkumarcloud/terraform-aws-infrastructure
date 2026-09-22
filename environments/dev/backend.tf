terraform {
  backend "s3" {
    bucket = "terraform-aws-infrastructure-state-dhinesh-2026"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
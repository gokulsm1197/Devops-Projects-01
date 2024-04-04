terraform {
  backend "s3" {
    bucket = "gokulsm"
    key = "eks/terraform.tfstate"
    region = "us-east-1"
    
  }
}
terraform {
  backend "s3" {
    bucket = "si-mu-bucket"
    key = "eks/terraform.tfstate"
    region = "us-east-1"
    
  }
}

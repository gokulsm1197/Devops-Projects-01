terraform {
  backend "aws" {
    bucket = "gokulsm"
    key = "jenkins/terraform.tfstate"
    region = "us-east-1"    
  }
}
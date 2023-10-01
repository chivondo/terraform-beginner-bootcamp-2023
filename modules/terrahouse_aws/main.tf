terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.19.0"
    }
  }
}   

 #https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string

data "aws_caller_identity" "current" {}
  

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
     
    backend "s3" {
    bucket = "harika-remote-state"
    key    = "expense-infra-bastion-dev"
    region = "us-east-1"
    dynamodb_table = "devops-locking"
  }


}

provider "aws" {
  # Configuration  
  region = "us-east-1"
}
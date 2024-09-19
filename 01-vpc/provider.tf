terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
   backend "s3" {
    bucket = "gokul-state-dev"
    key    = "roboshop-vpc-dev"
    region = "us-east-1"
    dynamodb_table = "gokul-locking-dev"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

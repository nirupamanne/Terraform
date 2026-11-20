terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3" {
    # bucket = "remote-state-92s-dev"
    bucket = "devops-remote-state-92s" #s3 bucket name
    key    = "roboshop-dev-vpc"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}
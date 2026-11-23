terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3" {
    bucket = "devops-remote-state-92s" #s3 bucket name
    key    = "databases.tfstate"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
    
  }
}

provider "aws" {
  region = "us-east-1"
}
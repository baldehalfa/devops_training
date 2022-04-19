terraform {
  required_providers {
    aws = {
        sourcsource = "hashicorp/aws"
        versionversion = "~> 3.0"
    }
  }
}

# Configure AWS Provider
provider "aws" {
  region = "us-east-1"
}
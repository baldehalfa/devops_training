terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Creation of an S3 bucket
resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "baldehalfa-s3-001"
  versioning {
    enabled = true
  }
}

resource "aws_iam_user" "my_iam_user" {
  name = "my_user_baldeh"
}



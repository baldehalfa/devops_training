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

# create two users
resource "aws_iam_user" "my_iam_users" {
    count = 2
    name = "my_user_${count.index}"
}
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

variable "environment" {
  default = "default"
}

resource "aws_iam_user" "my_iam_user" {
  name = "${local.iam_user_extension}_${var.environment}"
}

locals {
  iam_user_extension = "my_user_baldeh"
}

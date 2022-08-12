variable "users" {
  default = {
    alfa : { country : "Canada", department : "Tech" },
    riame : { country : "US", department : "Sales" },
    bobo : { country : "Guinea", department : "Finance" }
  }
}

provider "aws" {
  region = "us-east-1"
  //version = "~> 2.46" (No longer necessary)
}

resource "aws_iam_user" "my_iam_users" {
  for_each = var.users
  name     = each.key
  tags = {
    #country: each.value
    country : each.value.country
    department : each.value.department
  }
}

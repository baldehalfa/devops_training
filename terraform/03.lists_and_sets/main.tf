variable "names" {
  default = ["ravs", "tom", "jane"]
}

provider "aws" {
  region  = "us-east-1"
  //version = "~> 2.46" (No longer necessary)
}

resource "aws_iam_user" "my_iam_users" {
  #count = length(var.names)
  #name  = var.names[count.index]
 
}

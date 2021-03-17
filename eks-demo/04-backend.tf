# backend

# terraform {
#   backend "s3" {
#     region         = "us-east-1"
#     bucket         = ""
#     key            = "eks-demo.tfstate"
#     dynamodb_table = ""
#     encrypt        = true
#   }
#   required_version = ">= 0.12"
# }

terraform {
  backend "remote" {
    organization = ""
    workspaces {
      name = "eks-demo"
    }    
  }
  required_version = ">= 0.12.9"
}

# data "terraform_remote_state" "vpc" {
#   backend = "s3"
#   config = {
#     region = "us-east-1"
#     bucket = ""
#     key    = "vpc-demo.tfstate"
#   }
# }

data "terraform_remote_state" "vpc" {
  backend = "remote"
  config = {
    organization = ""
    workspaces = {
      name = "vpc-demo"
    }
  }
}

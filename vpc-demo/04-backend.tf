# backend

# terraform {
#   backend "s3" {
#     region         = ""
#     bucket         = ""
#     key            = "vpc-demo.tfstate"
#     dynamodb_table = ""
#     encrypt        = true
#   }
#   required_version = ">= 0.12"
# }

terraform {
  backend "remote" {
    organization = ""
    workspaces {
      name = "vpc-demo"
    }
  }
}

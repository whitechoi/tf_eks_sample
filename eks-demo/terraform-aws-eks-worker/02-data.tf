# data

data "aws_availability_zones" "azs" {
}

data "aws_caller_identity" "current" {
}

data "aws_ami" "worker" {
  filter {
    name   = "name"
    values = ["amazon-eks-node-${var.worker_version}-*"]
  }

  owners = ["602401143452"] # Amazon Account ID

  most_recent = true
}

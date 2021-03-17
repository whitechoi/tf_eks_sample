# data

data "aws_availability_zones" "azs" {
}

# Define an Amazon Linux AMI.
data "aws_ami" "worker" {
  most_recent = true

  owners = ["137112412989"] // AWS's account ID.

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*"]
  }
}

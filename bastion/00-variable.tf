# variable

variable "region" {
  default = "us-east-1"
}

variable "name" {
  default = "eks-bastion"
}

variable "administrator" {
  default = true
}

variable "allow_ip_address" {
  type = list(string)
  default = [
    "0.0.0.0/0",
    # echo "$(curl -sL icanhazip.com)/32"
  ]
}

variable "key_name" {
  default = ""
}

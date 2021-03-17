# locals

locals {
  account_id = data.aws_caller_identity.current.account_id
}

locals {
  name = "${var.name}"

  worker = "${local.name}-worker"

  # worker_1 = "${local.name}-worker-1"

  workers = [
    "arn:aws:iam::${local.account_id}:role/${local.worker}",
    # "arn:aws:iam::${local.account_id}:role/${local.worker_1}"
  ]

  # map_roles = [
  #   {
  #     rolearn  = "arn:aws:iam::${local.account_id}:role/k-cys-dev-bastion"
  #     username = "iam-role-eks-bastion"
  #     groups   = ["system:masters"]
  #   },
  # ]

  map_users = [
    {
      userarn  = "arn:aws:iam::${local.account_id}:user/"
      username = ""
      groups   = ["system:masters"]
    },
    # {
    #   userarn  = "arn:aws:iam::${local.account_id}:user/developer"
    #   username = "developer"
    #   groups   = []
    # },
    # {
    #   userarn  = "arn:aws:iam::${local.account_id}:user/readonly"
    #   username = "readonly"
    #   groups   = []
    # },
  ]

  nat_gateway_ips = data.terraform_remote_state.vpc.outputs.nat_gateway_ips
}

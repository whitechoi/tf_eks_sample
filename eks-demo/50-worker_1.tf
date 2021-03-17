# # worker_1

# module "worker_1" {
#   source = "./terraform-aws-eks-worker"

#   region = var.region
#   name   = "${local.worker_1}"

#   cluster_name                  = module.eks.name
#   cluster_endpoint              = module.eks.endpoint
#   cluster_certificate_authority = module.eks.certificate_authority
#   cluster_security_group_id     = module.eks.security_group_id

#     # worker node version 분리
#     # kubernetes_version            = module.eks.version

#   worker_version            = 1.17

#   vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

#   # subnet_ids = data.terraform_remote_state.vpc.outputs.private_subnet_ids
#   subnet_ids = [data.terraform_remote_state.vpc.outputs.private_subnet_ids[0],data.terraform_remote_state.vpc.outputs.private_subnet_ids[1]]
#   # subnet_azs = data.terraform_remote_state.vpc.outputs.private_subnet_azs
#   subnet_azs = [data.terraform_remote_state.vpc.outputs.private_subnet_azs[0],data.terraform_remote_state.vpc.outputs.private_subnet_azs[1]]

#   allow_ip_address = var.allow_ip_address

#   launch_configuration_enable = var.launch_configuration_enable
#   launch_template_enable      = var.launch_template_enable

#   launch_each_subnet          = var.launch_each_subnet
#   associate_public_ip_address = var.associate_public_ip_address

#   instance_type   = var.instance_type
#   mixed_instances = var.mixed_instances

#   volume_type = var.volume_type
#   volume_size = var.volume_size

#   min = var.min
#   max = var.max

#   on_demand_base = var.on_demand_base
#   on_demand_rate = var.on_demand_rate

#   key_name = var.key_name
#   key_path = var.key_path

#   tags = {}
# }


# output "worker_1_iam_role_arn" {
#   value = module.worker_1.iam_role_arn
# }

# output "worker_1_iam_role_name" {
#   value = module.worker_1.iam_role_name
# }

# output "worker_1_security_group_id" {
#   value = module.worker_1.security_group_id
# }

# output "eks_worker1_ami" {
#   value = module.worker_1.worker_ami_id
# }

module "k8s-vpc" {
  source         = "./modules/vpc"
  prefix         = var.prefix
  vpc_cidr_block = var.vpc_cidr_block
}

module "eks" {
  source         = "./modules/eks"
  prefix         = var.prefix
  vpc_id         = module.k8s-vpc.vpc_id
  cluster_name   = var.cluster_name
  retention_days = var.retention_days
  subnet_ids     = module.k8s-vpc.subnet_ids
  desired_size   = var.desired_size
  max_size       = var.max_size
  min_size       = var.min_size
}

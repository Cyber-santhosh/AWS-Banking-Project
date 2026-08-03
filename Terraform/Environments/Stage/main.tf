module "vpc" {
  source       = "../../modules/vpc"
  vpc_cidr     = var.vpc_cidr
  environment  = var.environment
  project_name = var.project_name
}

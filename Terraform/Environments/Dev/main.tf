module "vpc" {
  source       = "../../Modules/vpc"
  project_name = var.project_name
  environment  = var.environment
  vpc_cidr     = var.vpc_cidr
}

module "subnet" {
  source = "../../Modules/subnets"

  vpc_id = module.vpc.vpc_id

  project_name = var.project_name
  environment  = var.environment

  public_subnet_1_cidr = var.public_subnet_1_cidr
  public_subnet_2_cidr = var.public_subnet_2_cidr

  private_subnet_1_cidr = var.private_subnet_1_cidr
  private_subnet_2_cidr = var.private_subnet_2_cidr

  az1 = var.az1
  az2 = var.az2
}

module "internet-gateway" {

  source = "../../Modules/internet-gateway"

  vpc_id = module.vpc.vpc_id

  project_name = var.project_name
  environment  = var.environment
}

module "route-table" {

  source = "../../Modules/route-table"

  vpc_id = module.vpc.vpc_id

  igw_id = module.internet-gateway.igw_id

  public_subnet_1_id = module.subnet.public_subnet_1_id
  public_subnet_2_id = module.subnet.public_subnet_2_id

  project_name = var.project_name
  environment  = var.environment
}

#########################################
# VPC
#########################################

module "vpc" {

  source = "../../Modules/vpc"

  project_name = var.project_name
  environment  = var.environment

  vpc_cidr = var.vpc_cidr
}

#########################################
# Subnets
#########################################

module "subnet" {

  source = "../../Modules/subnets"

  vpc_id = module.vpc.vpc_id

  project_name = var.project_name
  environment  = var.environment

  public_subnet_1_cidr = var.public_subnet_1_cidr
  public_subnet_2_cidr = var.public_subnet_2_cidr

  private_subnet_1_cidr = var.private_subnet_1_cidr
  private_subnet_2_cidr = var.private_subnet_2_cidr
  az1                   = var.az1
  az2                   = var.az2
}

#########################################
# Internet Gateway
#########################################

module "internet_gateway" {

  source = "../../Modules/internet-gateway"

  vpc_id = module.vpc.vpc_id

  project_name = var.project_name
  environment  = var.environment
}

#########################################
# Route Table
#########################################

module "route_table" {

  source = "../../Modules/route-table"

  vpc_id = module.vpc.vpc_id

  igw_id = module.internet_gateway.igw_id

  public_subnet_1_id = module.subnet.public_subnet_1_id
  public_subnet_2_id = module.subnet.public_subnet_2_id

  project_name = var.project_name
  environment  = var.environment
}

#########################################
# Security Group
#########################################

module "security_group" {

  source = "../../Modules/security-group"

  vpc_id = module.vpc.vpc_id

  project_name = var.project_name
  environment  = var.environment
}

#########################################
# Jenkins Master EC2
#########################################

module "jenkins_master" {

  source = "../../Modules/ec2"

  instance_name = "jenkins-master"

  ami_id = var.ami_id

  instance_type = "t3.small"

  subnet_id = module.subnet.public_subnet_1_id

  security_group_id = module.security_group.security_group_id

  key_name = var.key_name

  associate_public_ip = true

  project_name = var.project_name
  environment  = var.environment
}

module "jenkins_slave" {

  source = "../../Modules/ec2"

  instance_name = "jenkins-slave"

  ami_id = var.ami_id

  instance_type = "c7i-flex.large"

  subnet_id = module.subnet.public_subnet_1_id

  security_group_id = module.security_group.security_group_id

  key_name = var.key_name

  associate_public_ip = true

  project_name = var.project_name
  environment  = var.environment
}

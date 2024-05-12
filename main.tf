provider "aws" {
  region     = var.region 
}

module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block         = var.vpc_cidr
  vpc_name               = var.vpc_name
  additional_tags        = var.additional_tags
  dns_hostnames          = var.enable_dns_hostname
  vpc_tenancy            = var.vpc_instance_tenancy
}

module "subnets" {
  source               = "./modules/subnets"
  vpc_id               = module.vpc.vpc_id
  azs                  = var.azs
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
}

module "igw" {
  source   = "./modules/igw"
  vpc_id   = module.vpc.vpc_id
  igw_name = var.igw_name
}

module "nat" {
  source            = "./modules/nat"
  vpc_id            = module.vpc.vpc_id
  nat_public_subnet = module.subnets.subnet_public[0]
  nat_name          = var.nat_name
}

module "route_table" {
  source               = "./modules/RouteTable"
  vpc_id               = module.vpc.vpc_id
  gateway_id           = module.igw.igw_id
  nat_gateway_id       = module.nat.nat_id
  rt_cidr_block        = var.rt_cidr_block
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
  public_subnet_id     = module.subnets.subnet_public
  private_subnet_id    = module.subnets.subnet_private
  public_rt_name       = var.public_rt_name
  private_rt_name      = var.private_rt_name
}

module "ec2" {
  source                = "./modules/ec2"
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  public_subnet_id      = module.subnets.subnet_public
  public_instance_name  = var.public_instance_name
  public_instance_sg    = module.security_group.Public_security_group
  additional_tags       = var.additional_tags
  key_name              = var.key_name
}

module "security_group" {
  source             = "./modules/securityGroup"
  vpc_id             = module.vpc.vpc_id
  public_sg_name     = var.public_sg_name
  private_sg_name    = var.private_sg_name
  pvt_sg_ports       = var.pvt_sg_ports
  pvt_sg_protocol    = var.pvt_sg_protocol
  pub_sg_cidr_blocks = var.pub_sg_cidr_blocks
  vpc_cidr_block     = [module.vpc.vpc_cidr]

}


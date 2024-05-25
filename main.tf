provider "aws" {
  region = "us-east-1"
}

module "network" {
  source = "./network"
}

module "compute" {
  source            = "./compute"
  vpc_id            = module.network.vpc_id
  subnet_id         = module.network.subnet_id
  security_group_id = module.network.security_group_id

}
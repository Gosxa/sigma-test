provider "aws" {
  region = var.aws_region
}

module "network" {
  source           = "./modules/network"
  allowed_ssh_cidr = var.allowed_ssh_cidr
}

module "ec2" {
  source            = "./modules/ec2"
  instance_type     = var.instance_type
  key_name          = var.key_name
  subnet_id         = module.network.subnet_id
  security_group_id = module.network.security_group_id

  user_data = templatefile("${path.module}/user_data.sh.tftpl", {
    compose_file = file("${path.module}/app/docker-compose.yml")
  })
}

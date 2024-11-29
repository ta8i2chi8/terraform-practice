module "network" {
  source = "./network"

  pj          = "terraform-practice"
  vpc_cidr    = "10.1.0.0/16"
  subnet_cidr = "10.1.10.0/24"
}

module "compute" {
  source = "./compute"

  pj               = "terraform-practice"
  app              = "front"
  instance_type    = "t2.micro"
  vpc_id           = module.network.vpc_id
  subnet_id        = module.network.subnet_id
  sg_inbound_cidr  = "60.71.153.42/32"
  sg_inbound_ports = ["80", "443"]
}

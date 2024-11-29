module "network" {
  source = "./network"

  vpc-cidr    = "10.1.0.0/16"
  subnet-cidr = ["10.1.10.0/24", "10.1.11.0/24"]
}

module "compute" {
  source = "./compute"

  type      = "t3.micro"
  subnet-id = module.network.subnet-ids[0]
}

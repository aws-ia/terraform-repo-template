# Example deployment using Terraform Cloud

# Defaults to TFC for remote backend
terraform {
  backend "remote" {}
  required_version = ">= 1.0.5"
}

# Use baseline VPC from aws-ia registery
module "workload_vpc" {
  source               = "aws-ia/vpc/aws"
  version              = "0.0.3"
  name                 = "workload-vpc"
  region               = var.region
  cidr                 = "10.0.0.0/16"
  public_subnets       = ["10.0.0.0/20"]
  private_subnets_A    = ["10.0.16.0/20", "10.0.32.0/20", "10.0.48.0/20"]
  enable_dns_hostnames = true
  tags                 = {}
  create_vpc           = true
}

# Deploys example workload instance via root module
module "workload" {
  source = "../"
  # interface to be defined
  # 
}

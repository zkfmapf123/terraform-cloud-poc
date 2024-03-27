module "stg-vpc" {
  source  = "zkfmapf123/vpc3tier/lee"
  version = "1.0.4"

  vpc_name   = "stg"
  vpc_region = "ap-northeast-2"
  vpc_cidr   = "10.0.0.0/16"

  webserver_subnets = {
    "a" : "10.0.1.0/24"
    "b" : "10.0.2.0/24"
  }

  was_subnets = {
    "a" : "10.0.100.0/24"
    "b" : "10.0.101.0/24"
  }

  db_subnets = {
    "a" : "10.0.200.0/24"
    "b" : "10.0.201.0/24"
  }
}

output "value" {
  value = module.stg-vpc
}

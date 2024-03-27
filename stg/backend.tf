terraform {
  required_providers {

    aws = {
      source  = "hashcorp/aws"
      version = "4.48.0"
    }
  }

  cloud {
    hostname     = "app.terraform.io"
    organization = "dk-terraform-poc"

    workspaces {
      tags = ["stg"]
    }
  }
}

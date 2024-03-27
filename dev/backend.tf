terraform {
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "3.74.2"
    }
  }

  cloud {
    hostname     = "app.terraform.io"
    organization = "dk-terraform-poc"

    workspaces {
      name = "terraform-dev"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

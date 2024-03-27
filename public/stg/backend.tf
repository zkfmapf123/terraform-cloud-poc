terraform {
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "4.48.0"
    }
  }

  cloud {
    hostname     = "app.terraform.io"
    organization = "dk-terraform-poc"

    workspaces {
      name = "terraform-stg"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

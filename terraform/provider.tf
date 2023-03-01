provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    profile = "default"
    region  = "us-east-1"
    bucket  = "ct-terraformstate"
    key     = "desafio-globo.tfstate"
  }
}
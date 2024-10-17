terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.55"
    }
  }
  backend "s3" {
    bucket         = "elvis-andrade-tf"
    key            = "terraform.tfstate"
    dynamodb_table = "elvis-andrade-tf"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "cloud"
}
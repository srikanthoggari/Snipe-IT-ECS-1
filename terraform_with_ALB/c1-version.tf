provider "aws" {
  region  = var.aws_region
#   profile = default
  
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.33.0"
    }
  }
}
terraform {
  cloud {
    organization = "Kesarivamshi"

    workspaces {
      name = "ecs-terra"
    }
  }
}
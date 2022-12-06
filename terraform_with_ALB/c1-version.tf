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
terraform {
  backend "s3" {
    bucket = "snipe-terra-tf"
    key    = "path/tf.state"
    region =  "us-east-1"
    encrypt = true
  }
}

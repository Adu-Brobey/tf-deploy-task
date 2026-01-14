terraform {
  required_version = ">= 1.2.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.9.0"
    }
  }

  # Backend configuration for team collaboration
  # Uncomment and configure for production use
  # backend "s3" {
  #   bucket         = "your-company-terraform-state"
  #   key            = "web-app/terraform.tfstate"
  #   region         = "eu-west-2"
  #   encrypt        = true
  #   dynamodb_table = "terraform-locks"
  # }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = local.common_tags
  }
}

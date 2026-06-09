terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "devops_bucket" {
  bucket = "devops-monitoring-project-bucket-123"

  tags = {
    Name        = "devops-monitoring-project"
    Environment = "Dev"
  }
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

variable "bucketname" {
  type    = string
  default = "mansong-iacm-bucket-pushgaming"
}

resource "random_string" "random" {
  length  = 5
  special = false
  lower   = true
  upper   = false
}

module "s3" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.14.0"

  bucket = "${var.bucketname}-${random_string.random.id}"
}
  
output "s3_bucket_arn" {
  value = module.s3.s3_bucket_arn
}

#
# PROVIDERS
#

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = "~> 1.3.0"
}

provider "aws" {
  region = var.region
}


#
# RESOURCES
#

# Lambda is packaged and deployed

module "lambda_function" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "4.7.1"

  function_name = var.project
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.9"

  source_path = "../src"
  publish     = true
}
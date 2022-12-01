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

module "python_function" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "4.7.1"

  function_name = "${var.func1_prefix}-${var.project}"
  handler       = var.func1_handler
  runtime       = var.func1_runtime

  source_path = var.func1_path
  publish     = true
}

module "node_function" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "4.7.1"

  function_name = "${var.func2_prefix}-${var.project}"
  handler       = var.func2_handler
  runtime       = var.func2_runtime

  source_path = var.func2_path
  publish     = true
}
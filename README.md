# Lambda Deployment Template

#### Dependencies
_Note: This project assumes **terraform** and **awscli** are installed locally._

## Terraform

The terraform script will have 1 provider: AWS.
By default the script will deploy:

1. Lambda function with basic security group with cloudwatch access


## How-To

Define your terraform variables:


#### **`./terraform/terraform.tfvars`**
```
region  = "eu-west-1"
project = "testing-hello-lambda"

# Python Example
func1_prefix  = "python"
func1_runtime = "python3.9"
func1_handler = "lambda_function.lambda_handler"
func1_path    = "../src/python"

# Node Example
func2_prefix  = "node"
func2_runtime = "nodejs18.x"
func2_handler = "index.handler"
func2_path    = "../src/node"
```

Run appropriate commands:
```bash
terrafrom init
terraform plan
terraform apply
terraform destroy
```
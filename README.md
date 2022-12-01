# Lambda Deployment Template

#### Dependencies
_Note: This project assumes **terraform** and **awscli** are installed locally._

## Terraform

The terraform script will have 1 provider: AWS.
By default the script will deploy:

1. Lambda function with basic security group with cloudwatch access
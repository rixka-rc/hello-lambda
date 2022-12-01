output "lambda_name" {
  value = module.lambda_function.lambda_function_name
}

output "lambda_version" {
  value = module.lambda_function.lambda_function_version
}

output "cloudwatch_logs_name" {
  value = module.lambda_function.lambda_cloudwatch_log_group_name
}
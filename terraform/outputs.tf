# Python Function

output "python_lambda_name" {
  value = module.python_function.lambda_function_name
}

output "python_lambda_version" {
  value = module.python_function.lambda_function_version
}

output "python_cloudwatch_logs_name" {
  value = module.python_function.lambda_cloudwatch_log_group_name
}

# Node Function

output "node_lambda_name" {
  value = module.node_function.lambda_function_name
}

output "node_lambda_version" {
  value = module.node_function.lambda_function_version
}

output "node_cloudwatch_logs_name" {
  value = module.node_function.lambda_cloudwatch_log_group_name
}
output "function_arn" {
  description = "ARN of the Lambda function"
  value       = aws_lambda_function.processor.arn
}

output "function_name" {
  description = "Name of the Lambda function"
  value       = aws_lambda_function.processor.function_name
}

output "invoke_arn" {
  description = "Invocation ARN of the Lambda function"
  value       = aws_lambda_function.processor.invoke_arn
}

output "security_group_id" {
  description = "ID of the security group attached to the Lambda function"
  value       = aws_security_group.lambda_sg.id
}

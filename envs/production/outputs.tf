output "lambda_arn" {
  description = "The ARN of the Lambda function"
  value       = module.lambda.lambda_arn
}

output "dynamodb_arn" {
  description = "The ARN of the DynamoDB table"
  value       = module.dynamodb.dynamodb_arn
}

output "sqs_queue_arn" {
  description = "The ARN of the SQS queue"
  value       = module.sqs.queue_arn
}

output "iam_role_arn" {
  description = "The ARN of the IAM role"
  value       = module.iam.lambda_role_arn
}

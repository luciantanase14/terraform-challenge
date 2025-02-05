output "lambda_arn" {
  value = module.lambda.lambda_arn
}

output "dynamodb_arn" {
  value = module.dynamodb.dynamodb_arn
}

output "sqs_queue_arn" {
  value = module.sqs.queue_arn
}

output "iam_role_arn" {
  value = module.iam.lambda_role_arn
}
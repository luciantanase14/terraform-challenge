variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "lambda_name" {
  description = "Lambda function name"
  type        = string
}

variable "dynamodb_name" {
  description = "DynamoDB table name"
  type        = string
}

variable "queue_name" {
  description = "SQS queue name"
  type        = string
}

variable "iam_role_name" {
  description = "IAM role for Lambda"
  type        = string
}

variable "tags" {
  description = "Common tags for resources"
  type        = map(string)
}

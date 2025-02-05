resource "aws_lambda_function" "lambda" {
  function_name    = var.lambda_name
  role            = aws_iam_role.lambda_role.arn
  handler         = "index.handler"
  runtime         = "python3.8"
  filename        = "lambda.zip"
  source_code_hash = filebase64sha256("lambda.zip")
  timeout         = 30
  tracing_config {
    mode = "Active"
  }
  tags = var.tags
}

resource "aws_lambda_event_source_mapping" "sqs_trigger" {
  event_source_arn = aws_sqs_queue.queue.arn
  function_name    = aws_lambda_function.lambda.arn
  batch_size       = 10
  enabled          = true
}
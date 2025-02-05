resource "aws_iam_policy" "sqs_access" {
  name = "sqs-access-policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = ["sqs:SendMessage", "sqs:ReceiveMessage", "sqs:DeleteMessage", "sqs:GetQueueAttributes"],
      Effect = "Allow",
      Resource = aws_sqs_queue.queue.arn
    }]
  })
}

resource "aws_iam_policy_attachment" "lambda_sqs" {
  name       = "lambda-sqs-attachment"
  roles      = [aws_iam_role.lambda_role.name]
  policy_arn = aws_iam_policy.sqs_access.arn
}
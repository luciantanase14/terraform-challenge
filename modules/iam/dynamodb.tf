resource "aws_iam_policy" "dynamodb_access" {
  name = "dynamodb-access-policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = ["dynamodb:PutItem", "dynamodb:GetItem", "dynamodb:UpdateItem", "dynamodb:DeleteItem"],
      Effect = "Allow",
      Resource = aws_dynamodb_table.dynamodb_table.arn
    }]
  })
}

resource "aws_iam_policy_attachment" "lambda_dynamodb" {
  name       = "lambda-dynamodb-attachment"
  roles      = [aws_iam_role.lambda_role.name]
  policy_arn = aws_iam_policy.dynamodb_access.arn
}
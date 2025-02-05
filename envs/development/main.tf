module "lambda" {
  source        = "../../modules/lambda"
  lambda_name   = var.lambda_name
  iam_role_name = var.iam_role_name
  tags          = var.tags
}

module "dynamodb" {
  source         = "../../modules/dynamodb"
  dynamodb_name  = var.dynamodb_name
  tags           = var.tags
}

module "sqs" {
  source      = "../../modules/sqs"
  queue_name  = var.queue_name
  tags        = var.tags
}

module "iam" {
  source          = "../../modules/iam"
  iam_role_name   = var.iam_role_name
  lambda_name     = var.lambda_name
  tags            = var.tags
}

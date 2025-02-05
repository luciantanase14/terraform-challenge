terraform {
  backend "s3" {
    bucket         = var.state_bucket
    key            = "development/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = var.state_dynamodb_table
  }
}
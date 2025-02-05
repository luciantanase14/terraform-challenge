resource "aws_dynamodb_table" "dynamodb_table" {
  name         = var.dynamodb_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "ID"
  range_key    = "userId"

  attribute {
    name = "ID"
    type = "S"
  }
  
  attribute {
    name = "userId"
    type = "S"
  }

  ttl {
    attribute_name = "ttl"
    enabled        = true
  }

  point_in_time_recovery {
    enabled = true
  }
  
  tags = var.tags
}
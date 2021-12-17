resource "aws_dynamodb_table" "basic-dynamodb-table" {
  for_each = var.dynamodb
  name           = var.dynamodb_name
  billing_mode   = each.value["billing_mode"]
  hash_key = each.value["hash_key"]
  attribute {
    name = each.value["attribute_name"]
    type = each.value["attribute_type"]
  }
  stream_enabled = each.value["stream_enabled"]
  stream_view_type = each.value["stream_view_type"]
}

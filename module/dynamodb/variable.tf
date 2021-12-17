variable "dynamodb_name" {
}

variable "dynamodb" {
  type = map(object({
    # name = string
    billing_mode = string
    attribute_name = string
    attribute_type = string
    stream_view_type = string
    hash_key = string
    stream_enabled = string
    }))
  default = {
    "dynamodb" = {
      "billing_mode" = "PAY_PER_REQUEST"
      "attribute_name" = "tid"
      "attribute_type" = "N"
      "stream_view_type" = "NEW_AND_OLD_IMAGES"
      "hash_key" = "tid"
      "stream_enabled" = true
      }
    }
}

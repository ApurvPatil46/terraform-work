variable "buckets" {
  type = map(object({
    bucket = string
    acl = string
  }))
  default = {
    "bucket1" = {
      bucket = "securelogix-iconectiv"
      acl = "private"
    }
  }
}


variable "acls" {
  type = map(object({
    block_public_acls = string
    block_public_policy = string
    restrict_public_buckets = string
    bucket = string
  }))
  default = {
    "acls1" = {
      block_public_acls = "true"
      block_public_policy = "true"
      restrict_public_buckets = "true"
      bucket = "securelogix-iconectiv"
    }
  }
}
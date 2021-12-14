resource "aws_s3_bucket" "buckets" {
  for_each = var.buckets
  bucket = each.value["bucket"]
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


resource "aws_s3_account_public_access_block" "acls" {
  for_each = var.acls
  # bucket = "${aws_s3_bucket.buckets.id}"
  block_public_acls = each.value["block_public_acls"]
  block_public_policy = each.value["block_public_policy"]
  restrict_public_buckets = each.value["restrict_public_buckets"]
  }  

# Creating AWS SNS
resource "aws_sns_topic" "sns" {
  for_each = var.sns
  name = each.value["name"]
  display_name = each.value["display_name"]
  fifo_topic = each.value["fifo_topic"]
}

# output "sns_topic_arn" {
#   value = join("", aws_sns_topic.tf_aws_sns_topic_with_subscription.*.arn)
# }

# Creating SNS topic subscription
# resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
#   topic_arn = aws_sns_topic.sns["sns1"].arn
#   protocol  = "sqs"
#   endpoint  = "akumardevops0@gmail.com"
# }






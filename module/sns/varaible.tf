variable "sns" {
  type = map(object({
    name = string
    display_name = string
    fifo_topic = string
  }))
  default = {
    "sns1" = {
      display_name = "iconectiv pdv receiver notifications"
      fifo_topic = "false"
      name = "iconectiv-portdata-topic"
    }
  }
}
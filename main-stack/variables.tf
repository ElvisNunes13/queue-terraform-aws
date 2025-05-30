variable "authentication" {
  type = object({
    assume_role_arn = string
    region = string
  })

  default = {
    region = "us-west-1"
    assume_role_arn = "arn:aws:iam::123456789012:role/ARN-ROLE-NAME"
  }
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "production"
    Project = "project-name"
  }
}

variable "queue" {
  type = list(object({
    name                      = string
    delay_seconds             = number
    max_message_size          = number
    message_retention_seconds = number
    receive_wait_time_seconds = number
  }))
  default = [{
    name                      = "queue-name-01"
    delay_seconds             = 90
    max_message_size          = 2048
    message_retention_seconds = 86400
    receive_wait_time_seconds = 100
  },
  {
    name                      = "queue-name-02"
    delay_seconds             = 90
    max_message_size          = 2048
    message_retention_seconds = 86400
    receive_wait_time_seconds = 100
  }]
}
variable "tags" {
  type        = map(string)
  description = "common tags to add to the ressources"
  default     = {}
}

variable "alb_arn" {
  description = "ARN of the ALB this ACL is applied to"
  type        = string
}

variable "rule" {
  description = "ID of the WAF rule"
  type        = string
}

variable "metric_name" {
  description = "Name of the the cloudwatch metric"
  type        = string
}

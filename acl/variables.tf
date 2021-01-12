variable "tags" {
  type        = map(string)
  description = "common tags to add to the ressources"
  default     = {}
}

variable "alb_arn" {
  type = string
}

variable "rule" {
  type = string
}

variable "metric_name" {
  type = string
}

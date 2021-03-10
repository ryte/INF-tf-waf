variable "tags" {
  type        = map(string)
  description = "common tags to add to the ressources"
  default     = {}
}


variable "allowed_headers" {
  type = map(string)
}

variable "metric_name" {
  type = string
}
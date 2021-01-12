variable "tags" {
  type        = map(string)
  description = "common tags to add to the ressources"
  default     = {}
}

variable "pattern" {
  type = string
}

variable "positional_constraint" {
  type    = string
  default = "CONTAINS"
}

variable "metric_name" {
  type = string
}

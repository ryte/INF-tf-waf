variable "tags" {
  type        = map(string)
  description = "common tags to add to the ressources"
  default     = {}
}

variable "pattern1" {
  type = string
}

variable "pattern2" {
  type = string
}

variable "positional_constraint1" {
  type    = string
  default = "CONTAINS"
}

variable "positional_constraint2" {
  type    = string
  default = "CONTAINS"
}

variable "metric_name" {
  type = string
}

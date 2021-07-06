variable "tags" {
  type        = map(string)
  description = "common tags to add to the ressources"
  default     = {}
}

variable "pattern" {
  type        = string
  description = "String to search for in the URL"
}

variable "positional_constraint" {
  type        = string
  description = "How to match the pattern (see [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-PositionalConstraint))"
  default     = "CONTAINS"
}

variable "metric_name" {
  type        = string
  description = "Name of the the cloudwatch metric"
}

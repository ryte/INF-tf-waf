variable "tags" {
  type        = map(string)
  description = "common tags to add to the resources"
  default     = {}
}

variable "rule_predicates" {
  type        = list(map(string))
  description = "List of rules to identify a part of a web request that you want to inspect (see [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-PositionalConstraint))."
  default     = []
}

variable "metric_name" {
  type        = string
  description = "The name or description for the Amazon CloudWatch metric of this rule."
}

output "id" {
  value = join("", aws_wafregional_rate_based_rule.url_match_rule.*.id)
}

output "id" {
  value = length(var.rule_predicates) >= 1 ? aws_wafregional_rate_based_rule.match_rule[0].id : ""
}

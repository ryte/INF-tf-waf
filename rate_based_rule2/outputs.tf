output "id" {
  value       = aws_wafregional_rate_based_rule.url_match_rule.id
  description = "ID of the created rule"
}

resource "aws_wafregional_byte_match_set" "url_match" {
  name  = "wafregional_byte_match_set"
  count = length(var.allowed_headers) >= 1 ? 1 : 0

  dynamic "byte_match_tuples" {
    for_each = var.allowed_headers
    content {
      field_to_match {
        type = lookup(byte_match_tuples.value, "type", null)
        data = lookup(byte_match_tuples.value, "data", null)
      }
      target_string         = lookup(byte_match_tuples.value, "target_string", null)
      positional_constraint = lookup(byte_match_tuples.value, "positional_constraint", null)
      text_transformation   = lookup(byte_match_tuples.value, "text_transformation", null)
    }
  }
}

resource "aws_wafregional_rate_based_rule" "url_match_rule" {
  name        = "wafregional_rate_based_match"
  count       = length(var.allowed_headers) >= 1 ? 1 : 0
  tags        = local.tags
  metric_name = var.metric_name

  rate_key   = "IP"
  rate_limit = 2000

  predicate {
    data_id = aws_wafregional_byte_match_set.url_match.id
    negated = false
    type    = "ByteMatch"
  }
}

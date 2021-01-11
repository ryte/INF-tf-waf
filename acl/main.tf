resource "aws_wafregional_web_acl" "acl" {
  name        = "wafregional_acl_${var.rule}"
  tags        = var.tags
  metric_name = var.metric_name

  default_action {
    type = "ALLOW"
  }

  rule {
    action {
      type = "BLOCK"
    }

    priority = 1
    rule_id  = var.rule
    type     = "RATE_BASED"
  }
}

resource "aws_wafregional_web_acl_association" "acl_association" {
  resource_arn = var.alb_arn
  web_acl_id   = aws_wafregional_web_acl.acl.id
}


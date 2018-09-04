resource "aws_wafregional_byte_match_set" "url_match1" {
  name = "wafregional_byte_match_set_${var.predicate1}"

  byte_match_tuples {
    text_transformation   = "LOWERCASE"
    target_string         = "${var.predicate1}"
    positional_constraint = "${var.positional_constraint1}"

    field_to_match {
      type = "URI"
    }
  }
}

resource "aws_wafregional_byte_match_set" "url_match2" {
  name = "wafregional_byte_match_set_${var.predicate2}"

  byte_match_tuples {
    text_transformation   = "LOWERCASE"
    target_string         = "${var.predicate2}"
    positional_constraint = "${var.positional_constraint2}"

    field_to_match {
      type = "URI"
    }
  }
}

resource "aws_wafregional_rate_based_rule" "url_match_rule" {
  name        = "wafregional_rate_based_match"
  metric_name = "${var.metric_name}"

  rate_key    = "IP"
  rate_limit  = 2000

  predicate {
    data_id = "${aws_wafregional_byte_match_set.url_match1.id}"
    negated = false
    type    = "ByteMatch"
  }

  predicate {
    data_id = "${aws_wafregional_byte_match_set.url_match2.id}"
    negated = false
    type    = "ByteMatch"
  }
}

# INF-tf-waf

Terraform module for creating WAF rules and ACLs

NOTE: This module is now updated to **Terraform 0.12** and it supports multiple rate based rules.

- [ACL](acl/README.md)
- [rate based rule](rate_based_rule/README.md)

This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/ryte/teams/inf).

## Usage

Example ACL to add multiple rate limit of a ALB based on:
- HTTP referers header that contains **sample-string-1**
- look for URI that matches exactly to **/sample-string-2**

Once anyone or both condition satisfies, the ALB will respond with 403 after 2000 requests per 5 minutes from the same IP is requested.

```hcl
locals {
  rule_predicates = [
    {
      target_string         = "sample-string-1"
      positional_constraint = "CONTAINS"
      text_transformation   = "NONE"
      type                  = "HEADER"
      data                  = "referer"
    },
    {
      target_string         = "/sample-string-2"
      positional_constraint = "EXACTLY"
      text_transformation   = "NONE"
      type                  = "URI"
    }
  ]
}
module "rate_based_rule" {
  source          = "github.com/ryte/INF-tf-waf.git//rate_based_rule?ref=v0.3.3"
  rule_predicates = local.rule_predicates
  metric_name     = "WAFRBRuleMatchSession"
}

module "rate_based_acl" {
  source      = "github.com/ryte/INF-tf-waf.git//acl?ref=v0.3.3"
  alb_arn     = data.terraform_remote_state.setup.alb_arn
  rule        = module.rate_based_rule.id
  metric_name = "WAFRBACLTest"
}
```

## Outputs
None

## Authors

- [Armin Grodon](https://github.com/x4121)
- [Markus Schmid](https://github.com/h0raz)
- [Parmeet Singh](https://github.com/parmeet4dev)

## Changelog

- 0.3.3 - Merged two separate directories `rate_based_rule` `rate_based_rule2` for different patterns into one, using Dynamic Blocks
- 0.3.2 - Move tags to local variable
- 0.3.1 - Add cost allocation tags
- 0.3.0 - Upgrade to terraform 0.12.x
- 0.2.0 - Fix usage of `rate_based_rule2`
- 0.1.3 - Bugfix
- 0.1.2 - Bugfix
- 0.1.1 - Add support for second rule
- 0.1.0 - Initial release.

## License

This software is released under the MIT License (see `LICENSE`).

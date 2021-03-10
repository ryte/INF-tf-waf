# INF-tf-waf

Terraform module for creating WAF rules and ACLs

NOTE: This module currently only supports ACLs with a single rate based rule,
which can only contain 1 or 2 patterns. This will only be changed after
Terraform 0.12 has been released.

- [ACL](acl/README.md)
- [rate based rule with 1 pattern](rate_based_rule/README.md)
- [rate based rule with 2 patterns](rate_based_rule2/README.md)

This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/ryte/teams/inf).


## Usage

Example ACL to add a rate limit to the route `/session` of a given ALB (The ALB
will respond with 403 after 2000 requests per 5 minutes from the same IP).

```hcl
local {
  allowed_headers = [
    {
      target_string         = "sample-string-1"
      positional_constraint = "STARTS_WITH"
      text_transformation   = "NONE"
      type                  = "HEADER"
      data                  = "referer"
    },
    {
      target_string         = "sample-string-2"
      positional_constraint = "EXACTLY"
      text_transformation   = "NONE"
      type                  = "URI"
    }
  ]
}
module "rate_based_rule" {
  source          = "github.com/ryte/INF-tf-waf.git//rate_based_rule?ref=v0.3.2"
  allowed_headers = local.allowed_headers
  metric_name     = "WAFRBRuleMatchSession"
}

module "rate_based_acl" {
  source      = "github.com/ryte/INF-tf-waf.git//acl?ref=v0.3.2"
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

## Changelog

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

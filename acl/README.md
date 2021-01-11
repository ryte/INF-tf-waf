# INF-tf-waf ACL

Terraform module for creating ACLs for a WAF

This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/ryte/teams/inf).


## Module Input Variables

- `alb_arn`
    -  __description__: ARN of the ALB this ACL is applied to.
    -  __type__: `string`

- `metric_name`
    -  __description__: Name of the the cloudwatch metric.
    -  __type__: `string`

- `rule`
    -  __description__: ID of the WAF rule.
    -  __type__: `string`

- `tags`
    -  __description__: a map of tags which is added to all supporting ressources
    -  __type__: `map`
    -  __default__: {}

## Usage
See [Usage](/README.md)

## Outputs
None

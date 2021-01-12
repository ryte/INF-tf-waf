# INF-tf-waf rate based rule

Terraform module for creating rate based rules for a WAF

This rule contains 1 pattern

This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/ryte/teams/inf).


## Module Input Variables

- `metric_name`
    -  __description__: Name of the the cloudwatch metric.
    -  __type__: `string`

- `pattern`
    -  __description__: String to search for in the URL.
    -  __type__: `string`

- `positional_constraint`
    -  __description__: How to match the pattern (see [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-PositionalConstraint))
    -  __type__: `string`

- `tags`
    -  __description__: a map of tags which is added to all supporting ressources
    -  __type__: `map`
    -  __default__: {}

## Usage
See [Usage](/README.md)

## Outputs
- `id`
    - __description__: ID of the created rule
    - __type__: `string`

# INF-tf-waf rate based rule

Terraform module for creating rate based rules for a WAF

This rule contains a predicate with 2 patterns

This project is [internal open source](https://en.wikipedia.org/wiki/Inner_source)
and currently maintained by the [INF](https://github.com/orgs/ryte/teams/inf).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

The following requirements are needed by this module:

- terraform (>= 0.12)

## Providers

The following providers are used by this module:

- aws

## Required Inputs

The following input variables are required:

### metric\_name

Description: Name of the the cloudwatch metric

Type: `string`

### pattern1

Description: String to search for in the URL

Type: `string`

### pattern2

Description: String to search for in the URL

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### positional\_constraint1

Description: How to match the pattern (see [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-PositionalConstraint))

Type: `string`

Default: `"CONTAINS"`

### positional\_constraint2

Description: How to match the pattern (see [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-PositionalConstraint))

Type: `string`

Default: `"CONTAINS"`

### tags

Description: common tags to add to the ressources

Type: `map(string)`

Default: `{}`

## Outputs

The following outputs are exported:

### id

Description: ID of the created rule

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Usage
See [Usage](/README.md)

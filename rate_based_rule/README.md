# INF-tf-waf rate based rule

Terraform module for creating rate based rules for a WAF

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

Description: The name or description for the Amazon CloudWatch metric of this rule.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### rule\_predicates

Description: List of rules to identify a part of a web request that you want to inspect (see [docs](https://docs.aws.amazon.com/waf/latest/APIReference/API_ByteMatchTuple.html#WAF-Type-ByteMatchTuple-PositionalConstraint)).

Type: `list(map(string))`

Default: `[]`

### tags

Description: common tags to add to the resources

Type: `map(string)`

Default: `{}`

## Outputs

The following outputs are exported:

### id

Description: n/a

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Usage
See [Usage](/README.md)

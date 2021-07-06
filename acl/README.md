# INF-tf-waf ACL

Terraform module for creating ACLs for a WAF

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

### alb\_arn

Description: ARN of the ALB this ACL is applied to

Type: `string`

### metric\_name

Description: Name of the the cloudwatch metric

Type: `string`

### rule

Description: ID of the WAF rule

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### tags

Description: common tags to add to the ressources

Type: `map(string)`

Default: `{}`

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Usage
See [Usage](/README.md)

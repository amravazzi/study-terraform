# README

## Providers
- terraform.io > registry > providers
- you need to know what you want to do beforehand
- module: execute multiple things in one place
- hcl: hashicorp configuration language

## Resources

```hcl
resource "local_file" "exemple" {
  ...
}
```

where:
- `resource`: command block
- `local_`: provider (AWS, Azure, GCP, etc)
- `_file`: provider type
- `example`: name given to the resource

## Variables

## Outputs

## Data sources

## Cloud basics

- VPC: virtual private cloud, a private network in the cloud provider
- subnet: pieces of networks inside a VPC
- route table: a table that specifies the routing within the subnets. An Internet Gateway can be attached here to give internet access to some subnets
- security groups: ingress and egress firewalls

## Roles & policies

- policy: a set of rules describing the interaction with AWS resources
- roles: a set of policies
# aws-vpc-module

### Provision components:
- VPC
- Internet Gateway
- Public Subnets
- Private Subnets
- NAT Gateway in Public subnets to give access to Internet from private subnets

### Input variables:
- Stand (String, for example: dev, test, prod)
- CIDR Block (String)
- Public subnets (List)
- Private subnets (List)


### Outputs:
- VPC ID
- Public subnet IDs
- Private subnet IDs

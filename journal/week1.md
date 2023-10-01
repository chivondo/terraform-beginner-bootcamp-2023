# Terraform Beginner Bootcamp 2023 Week 1

## Root Module Structure
Our root module structure is as follows:

```
PROJECT_ROOT
│
├── main.tf                 # everything else.
├── variables.tf            # stores the structure of input variables
├── terraform.tfvars        # the data of variables we want to load into our terraform project
├── providers.tf            # defined required providers and their configuration
├── outputs.tf              # stores our outputs
└── README.md               # required for root modules
```

[Standard Module Structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure)

## Terraform Variable
### Terraform CLoud Variables

In terraform we can set two kind of variables
- Environment Variables
- Terraform 

We can set Terraform Cloud variables to be sensitive

### Loading Terraform input Variables

### var flag

### var-file flag

### terraform.tfvars

### auto.tfvars

### order of terraform variables

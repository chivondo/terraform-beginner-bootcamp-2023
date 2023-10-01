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

## Dealing with Configurations drift

### What ahppens if we lose our state file
You most likely have to tear down all your cloud infrastructure manually.
It won't work for all cloud resources

### Terraform import

### Fix missing resource with Terraform import
`terraform import aws_s3_bucket.example`

### Fix manual configuration

If someone goes and delete or modifies cloud resource manually through ClickOps

If we run Terraform plan is with attempt to put our infrastructure back into expected state fixing configuration drift

### fix using terraform refresh

## Terraform Modules

### Terraform Module Structure

## Passing Input Variables

### Modules Sources

Using the source we can import the module from various places
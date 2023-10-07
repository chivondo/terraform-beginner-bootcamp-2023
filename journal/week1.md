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

## Consideration when using ChatGPT to write Terraform

LLMs might not be trained on the latest documentation by terraform.

## working with files in Terraform

### Fileexists function

### Filemd5


### Path variable

- path.module
- path.root
## Terraform locals
https://developer.hashicorp.com/terraform/language/values/locals
## Terraform data sources

## Working with JSON

`jasonencode`

### Chaging lifecycle of Resources

## Terraform data

## Provisioners

Provisioners allow you to execute commands on compute instances eg. A AWS CLI command

They are not recommended for use by Hashicorp because Config Management tools such as Ansible are better fit. But the functionality exits.

### Local-exec

This will execute a command on the machine running the terraform commands eg. plan apply

### Remote-exec

This will execute commands on a machine which you target. You will need to provide credentials such as ssh to get into the machine.


## For Each Expressions

Allows us to enumerate over complex data types

Mostly useful when you are creating multiples of cloud resource and you want to reduce the amount of repetitive terraform

[For each](https://developer.hashicorp.com/terraform/language/meta-arguments/for_each)


# Terraform Beginner Bootcamp 2023

## Table of Content

- [Semantic Versioning](#semantic-versioning-mage)
- [Install the Terraform CLI](#install-the-terraform-cli)
  - [Considerations](#considerations)


## Semantic Versioning :mage:

This project is going utiliza semantic versioning for its tagging.
[Semantic Versioning](https://semver.org/)

Given a version number **MAJOR.MINOR.PATCH**, eg. `1.0.1`


- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes
Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

## Install the Terraform CLI

### Considerations
Terraform CLI installation instrutions have changed due to gpg keyring change. Refer to the latest intall CLI

[Install Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)


### Refactoring into bash scripts

- Using Bash script for the Terraform CLI because of the need of a lot of commands.
- Keep the Gitpod Task File ([/gitpod.yml])
https://en.wikipedia.org/wiki/Shebang_(Unix)
https://www.gitpod.io/docs/configure/workspaces/tasks


### Working ENV vars

We can list out all Environment Variables (Env vars) using the `env` command

We can filter specfici env vars using grep eg. `env | grep `

#### Setting and Unsetting Env vars

In the terminal we can set using `export Hello world`


### Refactor CLI 

`aws sts get-caller-identity`


### Terraform Random provider

#### Terraform Init

#### Terraform Plan

#### Terraform Apply

#### Terraform Destroy
This destroys resources
`terraform destroy`

Use flag `--auto-approve` to dont get the prompt

## Issues with Terraform Cloud Login and Gitpod Workspace

When attempting to run `terraform login` it will launch in bash a bad view/UI to generate token. It does not work as expected.

As a workaround ; generate a token:
https://app.terraform.io/app/settings/tokens?source=terraform

Open the file manually 
```sh
touch home/gitpod/.terraform.d/credentials.tfrc.json
open home/gitpod/.terraform.d/credentials.tfrc.json
```

Provide the following code (replace token in file)

```json
{
    "credentials": {
        "app.terraform.io": {
            "token": "your_api_token_here"
        }
    }
}       
```

We have automated the Terraform Login process using the following bash script [bin/generate_tfrc_credentials](bin/generate_tfrc_credentials)


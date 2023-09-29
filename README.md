# Terraform Beginner Bootcamp 2023

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

Use flag `--auto approve` to dont get the prompt



# Terraform Projects

This repository is where I started learning Terraform with AWS.

It is not meant to represent a production platform. It is a learning archive that shows my progression from basic Terraform files into more organized, modular AWS infrastructure examples.

The main value of this repo is the path it shows: starting with simple resource definitions, learning how AWS services connect, and then cleaning the work into stack folders that are easier to read and run.

## What This Shows

- Building AWS infrastructure with Terraform
- Organizing infrastructure code into separate stacks
- Breaking AWS resources into reusable modules
- Passing outputs between VPC, security group, EC2, IAM, and RDS modules
- Working with variables, outputs, provider versions, and local configuration files
- Cleaning up early experiments into a more readable repository structure

## Repository Layout

```text
aws/
  aws-foundation/
  aws-terraform-web/
  web-db-stack/
  web-server/
```

### `aws/aws-foundation`

A broader AWS foundation example. It includes modules for networking, security groups, EC2, IAM, RDS, and load balancing.

### `aws/aws-terraform-web`

A modular web infrastructure example. This stack shows how smaller AWS modules can be wired together into a working environment.

### `aws/web-db-stack`

This folder contains the Terraform files that used to live at the repository root. It provisions a web/database style environment using local modules for VPC, security groups, EC2, IAM, and RDS.

The root `.tf` files were moved here so the repository root stays clean and every runnable Terraform stack has its own home.

### `aws/web-server`

A smaller web server focused stack. This is a good place to start before reading through the larger examples.

## Working With a Stack

Run Terraform commands from the folder for the stack you want to inspect or test.

```bash
cd aws/web-db-stack
terraform init
terraform validate
terraform plan
```

Apply only after reviewing the plan and confirming that the variables are set for your own AWS account.

```bash
terraform apply
```

Destroy resources when you are finished testing.

```bash
terraform destroy
```

## Variables and Local Values

Some examples include placeholder values in `terraform.tfvars`. Treat those files as local configuration examples, not production-ready secrets management.

Before running a stack, review values such as:

- AWS region and availability zones
- VPC and subnet CIDR ranges
- AMI IDs
- key pair names and public key paths
- database names, usernames, and passwords
- resource names and tags

Do not commit real credentials, private keys, production passwords, or account-specific sensitive values.

## What I Would Improve Next

If I were turning this into a more production-like Terraform project, I would add:

- Remote state storage with locking
- Separate environment folders such as `dev`, `stage`, and `prod`
- Stronger variable validation
- More consistent naming and tagging conventions
- CI checks for `terraform fmt`, `terraform validate`, and static analysis
- Secret handling outside of committed variable files
- Clearer module versioning and documentation

Those are intentionally not all solved here. This repo is the starting point, and the next Terraform project can show the more mature version of the same ideas.

## Requirements

- Terraform installed locally
- AWS CLI configured or another supported AWS credential source
- AWS permissions for the resources in the stack you are running
- A careful review of the Terraform plan before applying changes

## Notes

This repository is for Terraform learning, portfolio work, and infrastructure practice. The examples are intentionally small enough to read without a lot of ceremony, while still showing the shape of real infrastructure code.

Each stack should be treated independently unless a README inside that stack says otherwise.

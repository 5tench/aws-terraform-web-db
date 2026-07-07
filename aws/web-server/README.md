# AWS Terraform Web Server

This Terraform project provisions a small AWS web-server environment using reusable modules.

## Components

- VPC with public subnets, route table, and internet gateway
- Security group rules for web traffic
- EC2 instance configuration for a web server
- Optional supporting IAM and database module wiring from the original learning project

## Usage

```bash
terraform init
terraform plan
terraform apply
```

Use a local `terraform.tfvars` file for environment-specific values. Do not commit tfvars, state files, key material, or generated Terraform output.

## Notes

This is a learning/portfolio project. Review costs and AWS resource settings before applying in any account.

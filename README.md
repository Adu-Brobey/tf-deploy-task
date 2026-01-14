# Terraform Web Application Deployment

## Overview
Refactored Terraform configuration demonstrating infrastructure-as-code best practices for deploying web applications on AWS.

## Features
- DRY code using variables and count
- Environment-aware deployments (dev/prod)
- Enhanced security configuration
- Template-based user data
- Comprehensive documentation

## Quick Start
bash commands:
terraform init
terraform plan
terraform apply

## File Structure
- main.tf - Consolidated infrastructure
- variables.tf - Configuration parameters
- outputs.tf - Output values
- locals.tf - Computed values
- conf.tf - Provider configuration
- user_data.sh - Instance bootstrap
- TODO.txt - Improvement roadmap

## Best Practices Implemented
1. Code Quality: DRY principles, consistent naming
2. Security: Specific ingress/egress rules
3. Maintainability: Variables, locals, documentation
4. Collaboration: Example configs, workspace-ready

## Validation
terraform fmt -recursive
terraform validate

## TODO
See TODO.txt for infrastructure improvement recommendations.

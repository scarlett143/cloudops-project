# CloudOps Enterprise Platform

Complete cloud infrastructure deployment with AWS, Terraform, and CI/CD automation.

## Features

- **Infrastructure as Code**: Terraform for VPC, RDS, Security Groups
- **CI/CD Pipeline**: GitHub Actions for automated deployment
- **Containerization**: Docker for application packaging
- **Database**: MariaDB RDS with encryption
- **Monitoring**: CloudWatch dashboards and alarms
- **Security**: IAM roles, security groups, encryption

## Architecture

- VPC with 2 AZs (public and private subnets)
- Application Load Balancer
- EC2 instances with Node.js app
- RDS MariaDB database
- CloudWatch monitoring
- GitHub Actions CI/CD

## Deployment

```bash
cd terraform
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"


CloudOps deployed

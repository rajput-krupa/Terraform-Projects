# Terraform Data Source Project
## Overview
In cloud infrastructure, resources often depend on existing components. For example, to provision an EC2 instance, you need an AMI ID. AMI IDs can change frequently, and manually updating them for each instance is inefficient.
Terraform Data Sources solve this problem. They allow you to dynamically fetch existing resources from your cloud environment instead of hardcoding values. This is crucial for automation, ensuring infrastructure is provisioned reliably and consistently.

## Project Objective

This project demonstrates how to use Terraform Data Sources to automate cloud provisioning. The environment we are creating includes:

- A shared VPC
- 2 subnets within the VPC
- 2 EC2 instances in each subnet

Instead of creating new VPCs or subnets, we are referencing existing ones. We also use a pre-existing Linux AMI to launch EC2 instances dynamically.

<img width="1000" height="790" alt="Screenshot 2026-03-02 at 12 13 32 PM" src="https://github.com/user-attachments/assets/7de3a1c9-2e74-4689-8084-60e6a39f2021" />

## Terraform Data Sources Used
In this project, we use data sources to reference existing resources:

- VPC – Fetch the existing shared VPC

- Subnets – Fetch existing subnets within the VPC

- Linux AMI – Fetch the latest Amazon Linux 2 AMI

This allows Terraform to provision EC2 instances automatically, using existing infrastructure without manual intervention.

## Benefits

- Fully automated environment creation
- No need to manually lookup resource IDs (VPC, Subnets, AMI)
- Ensures consistency and repeatability in deployments
- Scales easily for multiple instances and subnets

## Usage

- Clone the repository:
```bash
git clone <repo-url>
cd DataSource-Projects
``` 
- Configure AWS credentials:
```bash
aws configure
```
- Initialize Terraform:
```bash
terraform init
```
- Preview the plan:
```bash
terraform plan
```
- Apply the configuration:
```bash
terraform apply
```

After deployment, Terraform will create EC2 instances in the existing VPC and subnets using the latest Linux AMI.

## Key Takeaways

- Data Sources help reference existing resources dynamically
- Avoid hardcoding IDs like VPC, subnet, or AMI
- Supports automation, scalability, and best practices in infrastructure as code

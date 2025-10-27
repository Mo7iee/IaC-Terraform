# Production-Ready AWS Infrastructure with Terraform
This project provisions a production-grade AWS environment using Terraform, designed to host scalable web applications with secure networking, automated scaling, and high availability.

---
## Projet Architecture 
<img width="880" height="864" alt="Screenshot 2025-10-27 155630" src="https://github.com/user-attachments/assets/ea5c93a5-bf19-487f-afc2-953a6462bc5a" />

---
## Architecture Overview
- **VPC** with both public and private subnets across multiple AZs  
- **Internet Gateway (IGW)** for public internet access  
- **NAT Gateway** for private subnets outbound access  
- **Bastion Host (EC2)** for secure SSH access into private resources  
- **Application Load Balancer (ALB)** to distribute traffic across instances  
- **Auto Scaling Group (ASG)** with a Launch Template for dynamic scaling  
- **IAM Role & Instance Profile** granting EC2 instances access to S3  
- **S3 Bucket** for application storage and logs  

---
## Prerequisites
Before using this project, ensure you have:

- **Terraform** v1.5+  
- **AWS CLI** configured (`aws configure`)  
- An **AWS account** with admin or equivalent permissions  
- A valid **EC2 key pair** in your AWS region (replace `key`)




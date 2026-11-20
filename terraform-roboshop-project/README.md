🛒 RoboShop Infrastructure - Complete E-commerce Platform

## 1. Project Overview

In this project, we use Terraform to create AWS infrastructure for the Roboshop application.

RoboShop is a production-ready, multi-tier e-commerce application infrastructure built with Terraform following AWS best practices. The architecture implements proper separation of concerns, security boundaries, and automated configuration management.

## 2. VPC

VPC is a private network in AWS. We create a VPC to keep all our application resources in one network.

## 3. Subnets

We divide our VPC into three subnets.

- Public Subnet – For resources that need public connectivity.
- Private Subnet – For backend application servers.
- Database Subnet – For database servers.

## 4. Internet Gateway

Internet Gateway connects our VPC to the internet. It provides internet access to resources in the public subnet.

## 5. NAT Gateway

NAT Gateway allows private servers to access the internet without exposing them directly.

For example, private servers can download packages and updates.

## 6. Security Groups

Security Groups work like firewalls. They control which traffic is allowed to access our servers.

## 7. Security Group Rules

We define inbound and outbound rules for different AWS resources.

For example:
- SSH – Port 22
- HTTP – Port 80
- HTTPS – Port 443
- MongoDB – Port 27017
- Redis – Port 6379
- MySQL – Port 3306
- RabbitMQ – Port 5672

## 8. Bastion Host

Bastion Host is used to access private EC2 instances securely.

First, we connect to the Bastion Host and then connect to private servers using SSH.

## 9. VPN

VPN provides a secure connection between our laptop or remote network and AWS VPC.

After connecting to VPN, authorized users can access private resources.

## 10. Database Servers

We create the following database and supporting servers:

- MongoDB – Stores application data.
- Redis – Used for caching.
- MySQL – Stores relational data.
- RabbitMQ – Handles message communication between services.

## 11. Load Balancer

We use Application Load Balancers to distribute application traffic across multiple servers.

- Frontend ALB – Handles frontend traffic.
- Backend ALB – Sends requests to backend services.

## 12. Terraform

Terraform is an Infrastructure as Code tool.

We use Terraform to create and manage AWS resources instead of creating them manually through the AWS Console.

### Important Terraform Commands

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
```

## 13. Project Deployment Order

1. 00-vpc – Create VPC and networking.
2. 10-sg – Create Security Groups.
3. 20-sg-rules – Configure security rules.
4. 30-bastion – Create Bastion Host.
5. 40-databases – Create database servers.

## 14. Interview Explanation

"In my Roboshop project, I use Terraform to create AWS infrastructure.

First, I create a VPC with public, private and database subnets.

Then I configure Internet Gateway and NAT Gateway for internet connectivity.

Next, I create Security Groups and configure inbound and outbound rules.

After that, I create a Bastion Host to access private servers securely.

Finally, I provision database servers like MongoDB, Redis, MySQL and RabbitMQ.

We use Terraform to automate the infrastructure creation and management."

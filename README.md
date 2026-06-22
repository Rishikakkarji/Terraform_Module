# 🚀 Azure Infrastructure Automation with Terraform

### Modular Terraform Architecture for Azure Cloud Deployments

![Terraform](https://img.shields.io/badge/Terraform-v1.5+-623CE4?style=for-the-badge\&logo=terraform\&logoColor=white)
![Azure](https://img.shields.io/badge/Microsoft_Azure-0078D4?style=for-the-badge\&logo=microsoftazure\&logoColor=white)
![IaC](https://img.shields.io/badge/Infrastructure_as_Code-IaC-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

---

### ☁️ Enterprise-Ready Azure Infrastructure Deployment Framework

Reusable • Scalable • Secure • Modular

</div>

---

## 📖 Project Overview

This repository contains a production-ready Terraform implementation for deploying Azure infrastructure using reusable child modules and environment-specific parent modules.

### Key Features

✅ Modular Architecture

✅ Multi-Environment Deployment (Dev / QA / Prod)

✅ Azure Virtual Machines

✅ Virtual Networks & Subnets

✅ Azure Bastion

✅ NAT Gateway

✅ NSG & Security Rules

✅ Storage Accounts & Containers

✅ VNet Peering

✅ Infrastructure as Code (IaC)

---

## 🏗️ High-Level Architecture

```text
                ┌─────────────────────┐
                │   Parent Module     │
                │ (Environment Layer) │
                └──────────┬──────────┘
                           │
        ┌──────────────────┼──────────────────┐
        │                  │                  │
        ▼                  ▼                  ▼

 ┌────────────┐    ┌────────────┐    ┌────────────┐
 │ Resource   │    │ Networking │    │ Compute    │
 │ Management │    │ Services   │    │ Services   │
 └─────┬──────┘    └─────┬──────┘    └─────┬──────┘
       │                 │                 │
       ▼                 ▼                 ▼

Resource Group    VNet / Subnet      Linux VM
Storage Account   NSG               NIC
Container         NAT Gateway       Bastion
                  VNet Peering
```

---

## 📂 Repository Structure

```text
Terraform_Module
│
├── child_module
│   ├── resource_group
│   ├── storage_account
│   ├── storage_container
│   ├── vnet
│   ├── subnet
│   ├── public_ip
│   ├── nic
│   ├── nsg
│   ├── nsg_rule
│   ├── vm
│   ├── bastion
│   ├── nat_gateway
│   └── vnet_peering
│
├── environments
│   ├── dev
│   ├── qa
│   └── prod
│
└── global
```

---

## ⚡ Quick Start

```bash
terraform init

terraform validate

terraform plan

terraform apply -auto-approve
```

---

## 🔐 Azure Resources Deployed

| Service         | Purpose               |
| --------------- | --------------------- |
| Resource Group  | Resource Container    |
| Virtual Network | Network Isolation     |
| Subnet          | Network Segmentation  |
| NSG             | Security Controls     |
| Public IP       | Internet Connectivity |
| NIC             | VM Connectivity       |
| Linux VM        | Compute               |
| Bastion         | Secure Access         |
| NAT Gateway     | Outbound Internet     |
| Storage Account | Data Storage          |
| VNet Peering    | Network Connectivity  |

---

## 👨‍💻 Author

### Rishi Kakkar

Azure Cloud & Terraform Engineer

⭐ If you find this project useful, consider giving it a star.

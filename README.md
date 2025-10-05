# 🚀 Secure and Scalable Azure Cloud Infrastructure with Terraform

## 🧠 Overview
This project demonstrates the deployment of a **secure, scalable, and automated three-tier architecture** on **Microsoft Azure** using **Terraform**.  
It follows Infrastructure as Code (IaC) principles, modularization, and DevOps automation best practices.

---

## 🏗️ Architecture

- **Frontend Layer:** Azure Application Gateway or Load Balancer  
- **Application Layer:** Virtual Machine Scale Set (VMSS) or App Service in private subnets  
- **Database Layer:** Azure Database for PostgreSQL or SQL Server  
- **Networking:** Custom Virtual Network (VNet) with subnets, NSGs, and route tables  
- **Security:** Managed Identities, Key Vault integration, and least privilege IAM roles  
- **State Management:** Azure Storage + State Locking via Azure Blob backend  
- **Automation:** CI/CD pipeline using **GitHub Actions** or **Azure DevOps Pipelines**

---

## 📁 Project Structure


```bash
terraform-azure-secure-infra/
│
├── README.md
├── .gitignore
│
├── backend/
│   └── main.tf                   # Remote backend (Azure Blob Storage)
│
├── envs/
│   ├── dev/
│   │   └── main.tf               # Dev environment
│   ├── staging/
│   │   └── main.tf
│   └── prod/
│       └── main.tf
│
├── modules/
│   ├── network/
│   │   ├── main.tf               # VNet, subnets, NSGs
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── compute/
│   │   ├── main.tf               # VMSS or App Service
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── database/
│   │   ├── main.tf               # Azure SQL or PostgreSQL
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── security/
│       ├── main.tf               # Key Vault, IAM, Managed Identities
│       ├── variables.tf
│       └── outputs.tf
│
└── pipeline/
    └── terraform-ci.yml          # GitHub Actions or Azure DevOps pipeline
```

⚙️ Tools & Technologies

Terraform

Azure Resource Manager (ARM)

Azure Virtual Network (VNet)

Azure Load Balancer / Application Gateway

Azure VM Scale Set / App Service

Azure Database for PostgreSQL / SQL Server

Azure Storage (Blob) for backend

Azure Key Vault

GitHub Actions / Azure DevOps Pipelines

🧩 Key Features

✅ Modular and reusable Terraform code
✅ Secure VNet architecture with NSGs and private subnets
✅ Automated CI/CD for Terraform with approval gates
✅ Scalable app tier using VM Scale Sets
✅ Encrypted state and secrets via Key Vault
✅ Multi-environment (dev/staging/prod) structure


🧱 Deployment Instructions

1️⃣ Clone the repository
```
git clone https://github.com/<yourusername>/terraform-azure-secure-infra.git
cd terraform-azure-secure-infra/envs/dev
```

2️⃣ Initialize Terraform

```
terraform init
```

3️⃣ Validate and Plan
```
terraform validate
terraform plan -out=tfplan
```
4️⃣ Apply the Plan
```
terraform apply tfplan
```


🔐 Security Highlights

Azure Key Vault used for all sensitive variables

Managed Identities for secure resource access

Network Security Groups (NSGs) to restrict inbound/outbound traffic

Private Endpoints for database and storage

Role-Based Access Control (RBAC) enforcing least privilege



🧰 CI/CD Pipeline Overview (GitHub Actions Example)
Pipeline Stages

Terraform Format & Validate – Ensure code quality

Plan – Generate infrastructure plan

Manual Approval (Prod) – Prevent accidental production deployment

Apply Infrastructure – Execute infrastructure changes


🧑‍💻 Author

Harmony Ordu
Cloud & DevOps Engineer
www.linkedin.com/in/harmonyordu | https://github.com/harmonyordu


🚀 Future Enhancements

Add Azure Monitor dashboards and alerts

Integrate Azure Container Apps or AKS for application workloads

Include Terragrunt for layered environment management

Add policy enforcement via Azure Policy or Terraform Cloud Sentinel


📜 License

This project is open-source under the MIT License
.
 

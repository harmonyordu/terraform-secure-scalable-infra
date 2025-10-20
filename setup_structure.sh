#!/bin/bash

# Root directory
PROJECT_ROOT="terraform-azure-secure-infra"

# Create directories
mkdir -p $PROJECT_ROOT/{backend,envs/{dev,staging,prod},modules/{network,compute,database,security},pipeline}

# Create main project files
touch $PROJECT_ROOT/README.md
touch $PROJECT_ROOT/.gitignore

# Backend
echo '# Remote backend (Azure Blob Storage)' > $PROJECT_ROOT/backend/main.tf

# Environments
echo '# Dev environment' > $PROJECT_ROOT/envs/dev/main.tf
echo '# Staging environment' > $PROJECT_ROOT/envs/staging/main.tf
echo '# Production environment' > $PROJECT_ROOT/envs/prod/main.tf

# Modules: Network
cat <<EOF > $PROJECT_ROOT/modules/network/main.tf
# VNet, subnets, and NSGs
EOF
touch $PROJECT_ROOT/modules/network/{variables.tf,outputs.tf}

# Modules: Compute
cat <<EOF > $PROJECT_ROOT/modules/compute/main.tf
# VMSS or App Service
EOF
touch $PROJECT_ROOT/modules/compute/{variables.tf,outputs.tf}

# Modules: Database
cat <<EOF > $PROJECT_ROOT/modules/database/main.tf
# Azure SQL or PostgreSQL
EOF
touch $PROJECT_ROOT/modules/database/{variables.tf,outputs.tf}

# Modules: Security
cat <<EOF > $PROJECT_ROOT/modules/security/main.tf
# Key Vault, IAM, Managed Identities
EOF
touch $PROJECT_ROOT/modules/security/{variables.tf,outputs.tf}

# Pipeline
cat <<EOF > $PROJECT_ROOT/pipeline/terraform-ci.yml
# GitHub Actions or Azure DevOps pipeline
EOF

echo "✅ Terraform Azure Secure Infrastructure project structure created successfully!"

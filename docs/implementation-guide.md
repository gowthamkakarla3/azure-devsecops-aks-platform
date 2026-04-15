# 🚀 Azure DevSecOps AKS Platform – End-to-End Implementation Guide

---

# 📌 1. PROJECT OVERVIEW

This project demonstrates a **production-grade DevSecOps architecture on Azure**, including:

* Infrastructure provisioning (Terraform)
* Containerization (Docker)
* Kubernetes deployment (AKS)
* Ingress routing
* CI/CD automation (Azure DevOps)
* Secrets management (Key Vault)
* Monitoring (Azure Monitor)

---

# 🧱 2. PROJECT STRUCTURE

```
azure-devsecops-aks-platform/
│
├── infrastructure/terraform/
├── services/
├── docker/
├── k8s/
├── docs/
└── azure-pipelines.yml
```

---

# ☁️ 3. AZURE ACCOUNT SETUP

## Step 1: Login

```bash
az login
```

## Step 2: Set Subscription

```bash
az account set --subscription "<subscription-id>"
```

---

# 🏗️ 4. INFRASTRUCTURE SETUP (TERRAFORM)

## Step 1: Initialize Terraform

```bash
cd infrastructure/terraform
terraform init
```

---

## Step 2: Validate

```bash
terraform validate
```

---

## Step 3: Plan

```bash
terraform plan
```

---

## Step 4: Apply

```bash
terraform apply -auto-approve
```

---

## Resources Created:

* Resource Group
* VNet + Subnets (Public + Private)
* AKS Cluster
* Azure Container Registry (ACR)

---

# 🔗 5. CONNECT TO AKS

```bash
az aks get-credentials --resource-group rg-devsecops --name aks-devsecops
```

---

# 🐳 6. DOCKER SETUP

## Step 1: Login to ACR

```bash
az acr login --name acrgowthamdevops
```

---

## Step 2: Build Images

Example:

```bash
docker build -f docker/Dockerfile.backend -t acrgowthamdevops.azurecr.io/user-service:v1 ./services/user-service
```

---

## Step 3: Push Images

```bash
docker push acrgowthamdevops.azurecr.io/user-service:v1
```

Repeat for all services.

---

# 🔐 7. CONNECT AKS TO ACR

```bash
az aks update \
  --name aks-devsecops \
  --resource-group rg-devsecops \
  --attach-acr acrgowthamdevops
```

---

# ☸️ 8. KUBERNETES DEPLOYMENT

## Step 1: Apply Base Config

```bash
kubectl apply -f k8s/base/
```

---

## Step 2: Apply HPA

```bash
kubectl apply -f k8s/hpa/
```

---

## Step 3: Verify Pods

```bash
kubectl get pods -n devsecops
```

---

# 🌐 9. INSTALL INGRESS CONTROLLER

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
```

---

## Verify:

```bash
kubectl get pods -n ingress-nginx
```

---

# 🌍 10. APPLY INGRESS

```bash
kubectl apply -f k8s/ingress/
```

---

## Get External IP

```bash
kubectl get svc -n ingress-nginx
```

---

# 🔐 11. KEY VAULT SETUP

## Step 1: Create Key Vault (UI)

* Name: kv-devsecops

---

## Step 2: Add Secret

* db-password

---

## Step 3: Assign Role

* Role: Key Vault Secrets User
* Assign to AKS Managed Identity

---

# 📊 12. ENABLE MONITORING

```bash
az aks enable-addons \
  --resource-group rg-devsecops \
  --name aks-devsecops \
  --addons monitoring
```

---

# 🔁 13. AZURE DEVOPS SETUP

## Step 1: Create Organization

👉 https://dev.azure.com

---

## Step 2: Create Project

* Name: azure-devsecops-aks

---

## Step 3: Create Service Connection

* Type: Azure Resource Manager
* Auth: Workload Identity Federation
* Scope: Resource Group

---

# ⚙️ 14. PIPELINE SETUP

## Step 1: Create Pipeline

* Source: GitHub
* Type: Starter pipeline

---

## Step 2: Add YAML

File: `azure-pipelines.yml`

---

## Step 3: Run Pipeline

---

# 🔄 15. CI/CD FLOW

```
Git Push
 ↓
Azure DevOps Pipeline
 ↓
Build Docker Images
 ↓
Push to ACR
 ↓
Deploy to AKS
```

---

# 🧠 16. TROUBLESHOOTING

## ImagePullBackOff

✔ Fix:

* Check image name
* Attach ACR to AKS

---

## kubectl not recognized

✔ Install kubectl:

```bash
az aks install-cli
```

---

## Service CIDR error

✔ Fix CIDR overlap in Terraform

---

# 🎯 17. FINAL ARCHITECTURE FLOW

```
User
 ↓
LoadBalancer
 ↓
NGINX Ingress
 ↓
Frontend
 ↓
API Gateway
 ↓
Microservices
 ↓
AKS
 ↓
ACR
 ↓
Key Vault
 ↓
CI/CD
 ↓
Monitoring
```

---

# 🏁 18. FINAL RESULT

You successfully implemented:

* Full DevSecOps lifecycle
* Production-grade AKS deployment
* CI/CD automation
* Secure architecture

---

# 👨‍💻 AUTHOR

Gowtham Kakarla
Cloud & DevOps Engineer

---

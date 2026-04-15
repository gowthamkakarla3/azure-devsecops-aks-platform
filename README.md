# 🚀 Azure DevSecOps AKS Platform

## 📌 Project Overview

This project demonstrates a **production-grade DevSecOps architecture on Azure**, built using Kubernetes (AKS), CI/CD pipelines, secure secret management, and monitoring.

It simulates a real-world microservices system with automated deployment and secure infrastructure.

---

## 🧠 Architecture Overview

User → Ingress → Frontend → API Gateway → Microservices → AKS → ACR → Key Vault → Azure DevOps → Azure Monitor

## 🏗️ Architecture Diagram

![Architecture](docs/architecture.png)
---

## 🏗️ Tech Stack

### ☁️ Cloud

* Azure Kubernetes Service (AKS)
* Azure Container Registry (ACR)
* Azure Virtual Network (VNet)

### ⚙️ DevOps

* Azure DevOps (CI/CD Pipeline)
* Docker (Containerization)
* Kubernetes (Orchestration)

### 🔐 Security

* Azure Key Vault (Secrets)
* Managed Identity
* RBAC

### 📊 Monitoring

* Azure Monitor
* Log Analytics

---

## 🔹 Microservices

* User Service
* Product Service
* Order Service
* API Gateway
* Frontend

---

## 🚀 Features

✔ Microservices architecture
✔ Kubernetes deployment using AKS
✔ Ingress-based routing (NGINX)
✔ CI/CD pipeline using Azure DevOps
✔ Secure secret management using Key Vault
✔ Private networking with controlled access
✔ Monitoring & logging using Azure Monitor

---

## 📂 Project Structure

```
azure-devsecops-aks-platform/
│
├── infrastructure/
│   └── terraform/
│
├── services/
│   ├── user-service/
│   ├── product-service/
│   ├── order-service/
│   ├── api-gateway/
│   └── frontend/
│
├── docker/
│   ├── Dockerfile.backend
│   └── Dockerfile.frontend
│
├── k8s/
│   ├── base/
│   ├── ingress/
│   └── hpa/
│
├── azure-pipelines.yml
└── README.md
```

---

## 🔁 CI/CD Flow

1. Code pushed to GitHub
2. Azure DevOps pipeline triggered
3. Docker images built
4. Images pushed to ACR
5. Kubernetes manifests applied
6. Application updated in AKS

---

## 🔐 Security Implementation

* Secrets stored in Azure Key Vault
* Managed Identity used for secure access
* Kubernetes RBAC enabled
* Only Ingress exposed externally

---

## 📊 Monitoring

* Enabled Azure Monitor for AKS
* Collected logs and metrics
* Observed pod health and performance

---

## 🌐 Application Flow

* Frontend accessed via Ingress
* API calls routed to microservices
* Services communicate internally within cluster

---

## 🎯 Learning Outcomes

* End-to-end DevOps lifecycle implementation
* Kubernetes production deployment
* CI/CD automation using Azure DevOps
* Secure architecture design in cloud

---

## 🔗 GitHub Repository

👉 <your-repo-link>

---

## 👨‍💻 Author

**Gowtham Kakarla**
Cloud & DevOps Engineer

---

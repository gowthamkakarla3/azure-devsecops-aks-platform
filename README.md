# 🚀 Azure DevSecOps AKS Platform

## 📌 Overview
This project demonstrates a production-grade microservices deployment on Azure using:

- Azure Kubernetes Service (AKS)
- Azure Container Registry (ACR)
- Azure DevOps CI/CD
- Private Networking (VNet)
- Horizontal Pod Autoscaling (HPA)
- Ingress Controller
- Monitoring (Azure Monitor)

---

## 🧠 Architecture

User → Ingress → API Gateway → Microservices → Database

CI/CD:
GitHub → Azure DevOps → Build → Scan → Push → Deploy

---

## 🧩 Services

- Frontend (Nginx)
- API Gateway
- User Service
- Product Service
- Order Service

---

## 🔐 Security

- Managed Identity
- Private AKS (optional advanced)
- Image scanning (Trivy)

---

## ⚙️ Features

- Microservices architecture
- Auto Scaling using HPA
- CI/CD pipeline
- Containerized deployment
- Production-ready structure

---

## 🚀 Setup Instructions

### 1. Clone Repo
git clone https://github.com/<your-username>/azure-devsecops-aks-platform.git
cd azure-devsecops-aks-platform


### 2. Build Docker Images

docker build -t <acr-name>/user-service:v1 services/user-service


### 3. Push to ACR

docker push <acr-name>/user-service:v1


### 4. Deploy to AKS

kubectl apply -f k8s/


---

## 📊 Auto Scaling

HPA automatically scales pods based on CPU usage.

---

## 📸 Screenshots
(Add screenshots here)

---

## 🧠 Learnings

- Kubernetes deployments
- CI/CD pipelines
- Azure services integration
- Microservices communication

---

## 🤝 Contribution

Fork this repo and try your own enhancements 🚀
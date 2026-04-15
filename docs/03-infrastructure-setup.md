# ☁️ Infrastructure Setup using Terraform

---

## 🧠 What we are doing?

We are creating:

* Resource Group
* VNet (network)
* Subnets (public & private)
* AKS Cluster
* Azure Container Registry (ACR)

---

## 📍 Where to run commands?

👉 Open terminal in:

```
infrastructure/terraform/
```

---

## 🚀 Step 1: Initialize Terraform

```
terraform init
```

👉 This downloads required providers

---

## 🚀 Step 2: Validate

```
terraform validate
```

👉 Checks syntax errors

---

## 🚀 Step 3: Plan

```
terraform plan
```

👉 Shows what will be created

---

## 🚀 Step 4: Apply

```
terraform apply -auto-approve
```

👉 Creates all resources in Azure

---

## ⏳ Wait

* Takes 5–10 minutes

---

## ✅ Verify in Azure Portal

Check:

* Resource Group
* AKS
* ACR

---

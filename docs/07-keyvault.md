# 🔐 Azure Key Vault Integration

---

## 🧠 What is Key Vault?

Azure Key Vault is used to **securely store sensitive data** such as:

* Passwords
* API keys
* Secrets

---

## ❗ Why not use Kubernetes secrets?

Kubernetes secrets:

* Stored in base64 ❌ (not secure)
* Hard to manage ❌

Key Vault:

* Fully secure ✅
* Centralized management ✅

---

## 🎯 What we are doing?

We will:

1. Create Key Vault
2. Store secrets
3. Allow AKS to access secrets

---

## 🚀 Step 1: Create Key Vault (UI)

Go to:
Azure Portal → Key Vault → Create

Fill:

* Name: `kv-devsecops`
* Region: Same as AKS

Click: Create

---

## 🚀 Step 2: Add Secret

Go to:
Key Vault → Secrets → Generate

Add:

```text
Name: db-password
Value: devops123
```

---

## 🚀 Step 3: Assign Access to AKS

Go to:
Key Vault → Access Control (IAM)

Add role:

```text
Key Vault Secrets User
```

Assign to:

```text
AKS Managed Identity
```

---

## 🚀 Step 4: (Optional Advanced) Use in Pods

Using CSI driver, secrets can be mounted inside pods.

---

## 🧠 How it works?

```text
Application → AKS → Key Vault → Secret fetched securely
```

---

## 🔐 Benefits

✔ No hardcoded secrets
✔ Secure access
✔ Centralized management

---

## 📌 Important Note

Make sure:

* AKS has permission to Key Vault
* Secret names match application usage

---

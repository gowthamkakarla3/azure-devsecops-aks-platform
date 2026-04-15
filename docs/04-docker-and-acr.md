# 🐳 Docker & ACR Setup

---

## 🧠 What we are doing?

* Build application images
* Push them to Azure Container Registry

---

## 📍 Where to run?

👉 Root folder of project

---

## 🚀 Step 1: Login to Azure

```
az login
```

---

## 🚀 Step 2: Login to ACR

```
az acr login --name acrgowthamdevops
```

---

## 🚀 Step 3: Build Image

Example:

```
docker build -f docker/Dockerfile.backend \
-t acrgowthamdevops.azurecr.io/user-service:v1 \
./services/user-service
```

---

## 🚀 Step 4: Push Image

```
docker push acrgowthamdevops.azurecr.io/user-service:v1
```

---

## 🔁 Repeat for:

* product-service
* order-service
* api-gateway
* frontend

---

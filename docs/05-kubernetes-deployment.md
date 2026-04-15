# ☸️ Kubernetes Deployment

---

## 🧠 What we are doing?

Deploy applications into AKS cluster

---

## 🚀 Step 1: Connect to AKS

```
az aks get-credentials \
--resource-group rg-devsecops \
--name aks-devsecops
```

---

## 🚀 Step 2: Deploy Base Services

```
kubectl apply -f k8s/base/
```

---

## 🚀 Step 3: Check Pods

```
kubectl get pods -n devsecops
```

---

## 🚀 Step 4: Fix ImagePullBackOff

If error:

```
az aks update \
--name aks-devsecops \
--resource-group rg-devsecops \
--attach-acr acrgowthamdevops
```

---

## 🚀 Step 5: Restart Pods

```
kubectl rollout restart deployment -n devsecops
```

---

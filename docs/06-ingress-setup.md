# 🌐 Ingress Setup

---

## 🧠 What is Ingress?

It routes traffic:

```
/ → frontend
/users → user-service
```

---

## 🚀 Step 1: Install Ingress

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
```

---

## 🚀 Step 2: Check Pods

```
kubectl get pods -n ingress-nginx
```

---

## 🚀 Step 3: Apply Ingress

```
kubectl apply -f k8s/ingress/
```

---

## 🚀 Step 4: Get IP

```
kubectl get svc -n ingress-nginx
```

---

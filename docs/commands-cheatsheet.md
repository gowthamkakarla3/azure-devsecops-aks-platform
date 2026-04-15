# ⚡ Commands Cheat Sheet

---

## 🔹 Terraform

```bash
terraform init
terraform plan
terraform apply
```

---

## 🔹 Azure CLI

```bash
az login
az account set --subscription <id>
az aks get-credentials --resource-group rg-devsecops --name aks-devsecops
```

---

## 🔹 Docker

```bash
docker build -t image .
docker push image
```

---

## 🔹 Kubernetes

```bash
kubectl get pods -n devsecops
kubectl apply -f k8s/base/
kubectl delete pods --all -n devsecops
kubectl logs <pod> -n devsecops
```

---

## 🔹 Debugging

```bash
kubectl describe pod <pod-name> -n devsecops
```

---

## 🔹 Ingress

```bash
kubectl get svc -n ingress-nginx
```

---

## 🔹 Monitoring

```bash
kubectl top pods
```

---

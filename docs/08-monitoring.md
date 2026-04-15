# 📊 Monitoring using Azure Monitor

---

## 🧠 What is Monitoring?

Monitoring helps track:

* CPU usage
* Memory usage
* Logs
* Errors

---

## 🎯 What we are doing?

We enable Azure Monitor for AKS.

---

## 🚀 Step 1: Enable Monitoring

Run:

```bash
az aks enable-addons \
--resource-group rg-devsecops \
--name aks-devsecops \
--addons monitoring
```

---

## 🚀 Step 2: View Metrics

Go to:

Azure Portal → AKS → Insights

---

## 📊 What you can see?

* Node performance
* Pod health
* Resource usage

---

## 🚀 Step 3: View Logs

Go to:

Azure Monitor → Logs

Run query:

```kusto
ContainerLog
| limit 50
```

---

## 🧠 How it works?

```text
AKS → Azure Monitor → Log Analytics → Dashboard
```

---

## 📌 Why this is important?

✔ Detect failures early
✔ Debug issues quickly
✔ Monitor performance

---

## 🔥 Real-world usage

Used for:

* Alerting
* Scaling decisions
* Troubleshooting

---

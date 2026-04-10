# 📊 Monitoring Setup Guide

## 🔹 Tools Used

- Azure Monitor
- Log Analytics
- Prometheus
- Grafana

---

## 🔹 Metrics to Track

### Application Metrics
- Request Count
- Error Rate
- Response Time

### Infrastructure Metrics
- CPU / Memory (AKS / Functions)
- DB connections
- Redis latency

---

## 🔹 Alerts

| Alert Type       | Condition                |
|-----------------|--------------------------|
| High Latency     | > 500ms                  |
| Error Spike      | > 5% errors              |
| CPU High         | > 80%                    |

---

## 🔹 Log Queries (KQL)

Failed Requests:
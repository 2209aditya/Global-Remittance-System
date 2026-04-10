# 🚨 Disaster Recovery Runbook

## 🔹 Objective

Ensure system recovery with minimal downtime and data loss.

- RTO: 15 minutes
- RPO: 5 minutes

---

## 🔹 DR Strategy

- Active-Passive setup
- Primary: East US
- Secondary: West Europe

---

## 🔹 Failover Steps

### Step 1: Detect Failure
- Alert triggered via Azure Monitor

### Step 2: Stop Primary Traffic
- Disable APIM routing

### Step 3: Activate Secondary Region
- Switch traffic via Front Door / DNS

### Step 4: Validate Services
- Run health checks

### Step 5: Resume Traffic
- Enable user access

---

## 🔹 Rollback Plan

- Restore traffic to primary once stable

---

## 🔹 DR Testing

- Quarterly DR drills
- Chaos testing using scripts

---

## 🔹 Automation

Scripts available in:
scripts/dr-demo/
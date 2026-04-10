# 🌍 GlobalRemit - High Level Design (HLD)

## 📌 Overview
GlobalRemit is a cloud-native cross-border money transfer platform built on Azure, designed for high scalability, security, and compliance.

## 🏗️ Architecture

Client → API Gateway (APIM) → Azure Functions → Service Bus → Downstream Services

## 🔹 Key Components

- **API Gateway (Azure APIM)**
  - Authentication (OAuth2 / JWT)
  - Rate limiting
  - Request routing

- **Compute Layer (Azure Functions)**
  - TransferAPI → Handles transactions
  - ComplianceEngine → KYC/AML checks
  - FXService → Currency conversion
  - NotificationService → Alerts

- **Messaging**
  - Azure Service Bus for async processing

- **Data Layer**
  - Azure SQL (transactions)
  - Redis Cache (low latency reads)

- **Secrets**
  - Azure Key Vault

- **Monitoring**
  - Azure Monitor + Log Analytics + Grafana

## 🔹 High-Level Flow

1. User initiates transfer
2. API validates request via APIM
3. Compliance check triggered
4. FX conversion applied
5. Transaction stored in SQL
6. Event published to Service Bus
7. Notification sent

## 🔹 Non-Functional Requirements

- Scalability: 10M+ users
- Availability: 99.99%
- Latency: <200ms
- Security: PCI-DSS, encryption at rest & transit
# 🔍 Low-Level Design (LLD)

## 🔹 Transfer Flow (Detailed)

### Step 1: API Request
POST /transfer

Payload:
{
  "sender": "user1",
  "receiver": "user2",
  "amount": 100,
  "currency": "USD"
}

---

### Step 2: Compliance Check

- Input: User details
- Output:
  - APPROVED / REJECTED

---

### Step 3: FX Conversion

Formula:
converted_amount = amount * exchange_rate

---

### Step 4: DB Schema (Azure SQL)

Table: Transactions

| Column          | Type        |
|-----------------|------------|
| transaction_id  | VARCHAR     |
| sender          | VARCHAR     |
| receiver        | VARCHAR     |
| amount          | FLOAT       |
| currency        | VARCHAR     |
| status          | VARCHAR     |
| created_at      | DATETIME    |

---

### Step 5: Service Bus Event

Topic: transaction-events

Event:
{
  "transactionId": "TXN123",
  "status": "SUCCESS"
}

---

### Step 6: Notification

- Email / SMS triggered
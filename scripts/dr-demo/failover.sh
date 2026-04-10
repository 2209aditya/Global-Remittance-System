#!/bin/bash

echo "🚨 Starting DR Failover प्रक्रिया..."

PRIMARY_RG="globalremit-prod-eastus"
DR_RG="globalremit-prod-westeurope"

echo "🔻 Step 1: Stopping primary region services..."
az functionapp stop --name transfer-api-prod --resource-group $PRIMARY_RG

echo "🔄 Step 2: Switching traffic to DR region..."
echo "Updating DNS / Front Door (simulated)..."

sleep 5

echo "🚀 Step 3: Starting DR services..."
az functionapp start --name transfer-api-dr --resource-group $DR_RG

echo "✅ Step 4: DR Failover completed successfully!"

echo "📊 Run health check script next."
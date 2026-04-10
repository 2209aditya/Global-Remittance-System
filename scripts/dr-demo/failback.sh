#!/bin/bash

echo "🔁 Starting Failback प्रक्रिया..."

PRIMARY_RG="globalremit-prod-eastus"
DR_RG="globalremit-prod-westeurope"

echo "🔻 Step 1: Stopping DR services..."
az functionapp stop --name transfer-api-dr --resource-group $DR_RG

echo "🔄 Step 2: Switching traffic back to Primary..."

sleep 5

echo "🚀 Step 3: Starting Primary services..."
az functionapp start --name transfer-api-prod --resource-group $PRIMARY_RG

echo "✅ Failback completed successfully!"
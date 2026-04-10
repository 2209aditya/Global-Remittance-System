#!/bin/bash

URL="https://your-api-endpoint/health"

echo "🔍 Checking system health..."

response=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ "$response" -eq 200 ]; then
    echo "✅ System is healthy"
else
    echo "❌ System is NOT healthy"
fi
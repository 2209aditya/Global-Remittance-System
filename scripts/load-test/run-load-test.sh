#!/bin/bash

echo "🚀 Starting load test..."

k6 run k6-script.js

echo "📊 Load test completed!"
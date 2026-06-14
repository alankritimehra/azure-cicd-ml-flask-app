#!/usr/bin/env bash

# Create and deploy Azure Web App
az webapp up \
  --name YOUR_APP_NAME \
  --resource-group YOUR_RESOURCE_GROUP \
  --runtime "PYTHON:3.10" \
  --sku F1

# Show deployed URL
az webapp show \
  --name YOUR_APP_NAME \
  --resource-group YOUR_RESOURCE_GROUP \
  --query defaultHostName \
  --output tsv

# Stream logs
az webapp log tail \
  --name YOUR_APP_NAME \
  --resource-group YOUR_RESOURCE_GROUP

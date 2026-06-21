cat > commands.sh <<'EOF'
#!/usr/bin/env bash

# Create and deploy Azure Web App
az webapp up \
  --name flaskml-alankriti-300374 \
  --resource-group Azuredevops \
  --runtime "PYTHON:3.10" \
  --sku F1

# Show deployed URL
az webapp show \
  --name flaskml-alankriti-300374 \
  --resource-group Azuredevops \
  --query defaultHostName \
  --output tsv

# Stream logs
az webapp log tail \
  --name flaskml-alankriti-300374 \
  --resource-group Azuredevops
EOF

chmod +x commands.sh

#!/usr/bin/env bash

PORT=443
APP_NAME="YOUR_APP_NAME"

echo "Port: $PORT"

curl -d '{
  "CHAS": {"0": 0},
  "RM": {"0": 6.575},
  "TAX": {"0": 296.0},
  "PTRATIO": {"0": 15.3},
  "B": {"0": 396.9},
  "LSTAT": {"0": 4.98}
}' \
-H "Content-Type: application/json" \
-X POST https://$APP_NAME.azurewebsites.net:$PORT/predict

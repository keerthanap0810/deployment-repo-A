#!/bin/bash
# deploy.sh (in Repo A)

echo "========================================"
echo "🚀 Starting Deployment Script from Repo A"
echo "========================================"

# Look for the YAML file in the root directory (where Repo B's files live)
if [ -f "./config.yaml" ]; then
  echo "✅ Found config.yaml from Repo B!"
  
  # Print the contents of the YAML file to prove we can read it
  echo "📄 Reading configurations:"
  cat ./config.yaml
  
  # Example of grabbing a specific value from the YAML file using grep
  APP_NAME=$(grep "app_name:" ./config.yaml | awk -F'"' '{print $2}')
  echo "⚙️ Proceeding to deploy: $APP_NAME"
else
  echo "❌ ERROR: config.yaml not found!"
  exit 1
fi
echo "========================================"

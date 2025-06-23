#!/bin/bash

if [ -z "$PT_package" ]; then
  echo '{"error": "Missing parameter: package"}'
  exit 1
fi

# Check if package is already installed
if /usr/local/bin/brew list "$PT_package" >/dev/null 2>&1; then
  echo "{"status": "already installed", "package": "$PT_package"}"
  exit 0
fi

# Attempt installation
/usr/local/bin/brew install "$PT_package"
if [ $? -eq 0 ]; then
  echo "{"status": "installed", "package": "$PT_package"}"
else
  echo "{"status": "failed", "package": "$PT_package"}"
  exit 1
fi

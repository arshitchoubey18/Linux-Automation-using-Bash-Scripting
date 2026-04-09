#!/bin/bash

echo "Starting Linux automation tasks..."
echo "---------------------------------"

cd "$(dirname "$0")" || exit

bash health_check.sh
echo ""

bash log_cleanup.sh
echo ""

bash service_monitor.sh
echo ""

echo "All automation tasks completed."

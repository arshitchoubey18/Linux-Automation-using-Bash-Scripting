#!/bin/bash

REPORT_FILE="../reports/system_health_$(date +%F_%H-%M-%S).txt"

echo "==============================" > "$REPORT_FILE"
echo " Linux System Health Report " >> "$REPORT_FILE"
echo " Generated on: $(date)" >> "$REPORT_FILE"
echo "==============================" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "---- System Uptime ----" >> "$REPORT_FILE"
uptime >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "---- Disk Usage ----" >> "$REPORT_FILE"
df -h >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "---- Memory Usage ----" >> "$REPORT_FILE"
free -h >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "---- CPU Load ----" >> "$REPORT_FILE"
top -b -n 1 | head -n 10 >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "---- Logged In Users ----" >> "$REPORT_FILE"
who >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "Health check completed. Report saved at: $REPORT_FILE"

#!/bin/bash

# Checks CPU usage percentage
CheckUsage() {
  cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
  echo "CPU Usage: $cpu_usage%"
}

# Checks memory utilization
CheckUtilization() {
  memory_utilization=$(free -m | awk '/Mem:/ {print $3/$2 * 100}')
  echo "Memory Utilization: $memory_utilization%"
}

# Main loop
while true; do
  clear
  echo "System Monitoring:"
  echo "------------------"
  CheckUsage
  CheckUtilization
  sleep 1
done


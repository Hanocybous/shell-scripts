#!/bin/bash
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
memory_usage=$(free -m | awk '/Mem:/ {print $3}')
disk_usage=$(df -h / | awk '/\// {print $5}' | sed 's/%//')

echo "CPU Usage: $cpu_usage%"
echo "Memory Usage: $memory_usage MB"
echo "Disk Usage: $disk_usage%"

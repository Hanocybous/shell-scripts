#!/bin/bash
interfaces=$(ip -o link show | awk -F': ' '{print $2}')
echo "Network Interfaces: $interfaces"

for interface in $interfaces; do
    ip_addr=$(ip -o addr show "$interface" | awk '{print $4}')
    echo "$interface IP Address: $ip_addr"
done

#!/bin/bash

read -p "Enter the website URL: " website
response=$(timeout 30 curl -Is "$website" | head -n 1)

if [ -n "$response" ]; then
    echo "Website is up and running."
else
    echo "Website is down."
fi

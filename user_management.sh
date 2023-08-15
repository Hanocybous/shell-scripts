#!/bin/bash
action="$1"
username="$2"

if [ "$action" == "create" ]; then
    useradd "$username"
    echo "User $username created."
elif [ "$action" == "delete" ]; then
    userdel "$username"
    echo "User $username deleted."
else
    echo "Usage: $0 [create|delete] <username>"
fi

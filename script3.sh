#!/bin/bash
# Script 3: Disk and Permission Auditor

echo "Disk & Permission Check"
echo "#######################"
# common folders
dirs=("/etc" "/var/log" "/usr/bin" "/home" "/tmp" "/opt")

printf "%-20s %-10s %-15s %s\n" "dir" "size" "owner" "perms"
echo "#####################################################################"
for d in "${dirs[@]}"; do
    if [ -d "$d" ]; then
        # get size (ignore errors)
        sz=$(du -sh "$d" 2>/dev/null | awk '{print $1}')
        
        # get perms
        perms=$(ls -ld "$d" 2>/dev/null | awk '{print $1}')
        owner=$(ls -ld "$d" 2>/dev/null | awk '{print $3}')

        printf "%-20s %-10s %-15s %s\n" "$d" "$sz" "$owner" "$perms"
    else
        printf "%-20s %-10s\n" "$d" "NOT FOUND"
    fi
done
echo "#####################################################################"

echo "Completed."

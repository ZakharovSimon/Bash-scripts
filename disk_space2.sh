#!/bin/bash

disk_used=$(df --output=size / | grep -v 1K-blocks)
disk_free=$(df --output=avail / | grep -v Avail)

disk_percent=$(echo "scale=2; $disk_free / $disk_used * 100" | bc)

echo "$disk_percent%"

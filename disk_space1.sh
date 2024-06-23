#!/bin/bash

total_usage=$(df --output=pcent / | grep -v Use | sed 's/\%//g')
total_memory=100

free_memory=$(($total_memory - $total_usage))

echo "$free_memory%"

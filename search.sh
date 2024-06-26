#!/bin/bash

word_or_phrase=$1
catalogue=$2

grep -rn "$word_or_phrase" "$catalogue" | awk -F/ '{ print $NF }'

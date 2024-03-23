#!/bin/bash
awk -F ',' 'BEGIN {max_dist=0} {if ($5 > max_dist) {max_dist=$5; dest=$4}} END {print "MSN," dest "," max_dist}' allMSN.csv > farthest.txt

# Define output file
output_file="delays.txt"
echo Mo Tu We Th Fr Sa Su > delays.txt

# Calculate average departure delay for each day of the week
for day in {1..7}; do
    avg_delay=$(awk -F ',' -v day="$day" 'BEGIN {sum=0; count=0} {if ($1 == day && $2!="NA" ) {sum += $2; count++}} END {if (count != 0) printf "%.1f", sum/count; else printf "$
    echo -n "$avg_delay " >> "$output_file"
done

# Append newline to the end of the file
echo >> "$output_file"


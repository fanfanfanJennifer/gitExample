#!/bin/bash

cat out_csv/out1.csv out_csv/out2.csv out_csv/out3.csv > combined_output.csv
lightest=$(awk 'NR == 1 || $1 < min { min = $1 } END { print min }' combined_output.csv)
echo $lightest > out


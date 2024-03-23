#!/bin/bash

input_file="mtcars${SLURM_ARRAY_TASK_ID}.csv"

awk -F, 'NR==1 {next} NR>1 && $11==3 {print $7}' "$input_file" > "out${SLURM_ARRAY_TASK_ID}.csv"

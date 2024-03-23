#!/bin/bash

job_name="mtcars_processing"

sbatch --job-name="getData" getData.sh

for i in {1..3}; do
    sbatch --job-name="jobArray_$i" --array=$i jobArray.sh
done

sbatch --job-name="findLightest" findLightest.sh


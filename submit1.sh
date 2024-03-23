#!/bin/bash

job_name="airlines"

sbatch --job-name="data" data.sh

sbatch --job-name="average" average.sh


#!/bin/bash

process_year() {
    year=$1

    wget -q http://pages.stat.wisc.edu/~jgillett/DSCP/HPC/airlines/$year.csv.bz2


    bzip2 -d $year.csv.bz2


   awk -F ',' '{print $4 "," $16 "," $17 "," $18 "," $19}' "${year}.csv" | awk -F ',' '{if ($3 == "MSN") print $0}' > "MSN${year}.csv"
    rm $year.csv


}


for year in {1987..2008}; do
    process_year $year &
done


wait

echo "All jobs completed."


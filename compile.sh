#!/bin/bash


START_DATE=`date`
date1=$(date +"%s")
# Execute Process
make
date2=$(date +"%s")
END_DATE=`date`

echo "Job started at: $START_DATE"
echo "Job started at: $END_DATE"

sdt=$( date -d "$START_DATE" +%s )
edt=$( date -d "$END_DATE" +%s )

diff=$(($date2-$date1))
echo "$(($diff / 60)) minutes and $(($diff % 60)) seconds elapsed."

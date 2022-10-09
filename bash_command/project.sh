#!/usr/bin/env bash

echo "How many rows do you want to analyze?"
read ROWS 

COUNT = 1
while [$COUNT -le $ROWS]
do
    echo "$COUNT" >> small_unemployment_analysis.txt 
    ((COUNT++))
done 


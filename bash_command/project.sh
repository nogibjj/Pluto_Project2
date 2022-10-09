#!/usr/bin/env bash

echo "How many countries do you want to analyze randomly?"
read LINES
echo "Generate a new small analysis file randomly"
shuf -n $LINES unemployment_analysis.csv > small.csv
echo "First 3 rows for new file"
head -n 3 small.csv

echo "Last 3 rows for new file"
tail -n 3 small.csv

echo "Let we use a more comprehensive way: What country's unemployment data you want to search?"
read COUNTRY 

echo "Generate $COUNTRY data"
grep $COUNTRY unemployment_analysis.csv

echo "What two countries do you want to compare?"
read COUNTRY1
read COUNTRY2

echo "Generate compared dataset"
grep -e $COUNTRY1 -e $COUNTRY2 unemployment_analysis.csv > new_file.csv

echo "The average is: "
sum=0
count=1
for num in $COUNTRY1
do
    if [ $count -le 1 ]
    then
        p=$num
    else
        sum=$(($sum + $num))
    fi
    ((count++))
done
echo "$sum/$p"


















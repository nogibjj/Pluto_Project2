#!/usr/bin/env bash
echo "How many countries do you want to analyze randomly?"
read LINES

echo "Generate a new small analysis file randomly"
shuf -n $LINES unemployment_analysis.csv > small.csv

echo "First 3 rows for new file"
head -n 3 small.csv

echo "Last 3 rows for new file"
tail -n 3 small.csv

echo "Let we use a more detailed way: What country's unemployment data you want to search?"
read COUNTRY

echo "Generate $COUNTRY data"
grep $COUNTRY unemployment_analysis.csv

echo "What two countries do you want to compare? First country:"
read COUNTRY1

echo "Second country:"
read COUNTRY2

echo "Generate compared dataset"
grep -e $COUNTRY1 -e $COUNTRY2 unemployment_analysis.csv > new_file.txt


echo "* Column names:"
if IFS=","
then
    read -r c4 c5 c8 < unemployment_analysis.csv
fi
echo "$c4 | $c5| $c8"
echo 
















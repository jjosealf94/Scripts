#!/bin/bash 
#: Description : this script takes one number and says you if that number is in the list
clear
rm list.csv
echo "Please enter one number:"
read num

for n in {1..100}
do 
    echo "$n,$((n**2)),$((n**3))" >> list.csv
done

awk -F "," -v var=$num '{if(var==$1){print $1" "$2" "$3}}' list.csv

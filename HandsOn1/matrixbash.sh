#!/bin/bash
#: Description : This script print a matrix nxn give by user
rm matrix.tsv
echo "Please enter the size of the matrix:"
read n 
for ((i=1;i<=$n;i++))
do
    for ((j=1;j<=$n;j++))
    do
	echo "Enter the element in the position $i,$j"
	read element
	printf "%d\t" "$element" >> matrix.tsv
	if [ "$j" -eq "$n" ]
	    then
	    printf "\n" >> matrix.tsv
	fi
    done
done

sed -i 's/\t$//g' matrix.tsv
echo
echo "The matrix is:"
awk -F "\t" '{print}' matrix.tsv



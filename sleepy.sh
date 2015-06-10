#!/bin/bash
# ------------------------------------------------------------------
# Title			Sleepy script
# Description		This is a script which takes a long time
# Author		Juan David Lizarazo
# Creation Date	13-Oct-2014
# ------------------------------------------------------------------

counter=1

while [ $counter -lt 200 ]
do
	echo $counter >> ~/longwalk.txt
	counter=$(($counter + 1))
	date >> ~/longwalk.txt
	fortune >> ~/longwalk.txt
	sleep 3600
done

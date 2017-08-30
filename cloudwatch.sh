#!/bin/bash

for ((i=1;i<=100000;i++ ));
do
	pool=(1 2 3 4 5 6 7 8 9 10)
	num=${#pool[*]}
	result=${pool[$((RANDOM%num))]}

	echo "Putting data:" $result
	aws cloudwatch put-metric-data --namespace "Test Metrics" --metric-name "Demo" --value $result 
	sleep 1
done;

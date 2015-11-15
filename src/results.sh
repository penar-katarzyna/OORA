#!/bin/bash

for i in 1 2 3 4 5 6 7 8; do
	for j in 0 1 2 3 4; do
		cat ${i}${j}results >> ${j}results
		rm ${i}${j}results
	done
done


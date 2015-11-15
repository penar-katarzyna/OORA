#!/bin/bash
for j in 0 1 2 3 4; do
	rm ${j}results
done
gcc -O0 -I. zad1.c handle_error.o papi/lib/libpapi.a -o zad1
for i in 1 2 3 4 5 6 7 8; do
	for j in 0 1 2 3 4; do
		./zad1 ${j} ${i} > ${i}${j}results &
	done
done

#!/bin/bash

for i in `ls | grep 'result' | grep -v '.png$' | grep -v '.sh'`; do
	echo $'in'
  gnuplot -e 'set term png; set output "'"$i"'.png"; plot "'"$i"'" w p pt 7 ps 1.2, "'"$i"'" w l'
done

for i in `ls | grep 'result' | grep -v '.png$' | grep -v '.sh'`; do
  gnuplot -e 'set term png; set output "'"$i"'.png"; plot "'"$i"'" w p pt 7 ps 1.2, "'"$i"'" w l'
done

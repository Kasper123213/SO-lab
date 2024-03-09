#!/usr/bin/bash
n=$1
for i in $(seq 1 $n); do
	echo "$i  losowo wygenerowana wartosc: $(($RANDOM %10))" >> file$i.t1

done


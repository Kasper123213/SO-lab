#!/usr/bin/bash
mkdir plik1

(cd plik1
echo "Dane w pliku1">plik1.txt
)

mkdir dowiazanie

(cd dowiazanie
ln -s ../plik1/plik1.txt dowiazanie
)

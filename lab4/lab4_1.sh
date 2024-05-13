#!/usr/bin/bash

#Wyświetlić zawartość zadanego pliku tekstowego tak, że każde zdanie wyświetlane jest w osobnej linii (jednej). Nie należy przyjmować żadnych założeń uproszczających co do zawartości wyświetlanego pliku. W szczególności może on zawierać zdania zapisane w wielu liniach, oraz linie zawierające wiele zdań lub części zdań. 


plik=$1

awk 'NF{printf "%s ", $0} END{print ""}' $plik | awk -v RS='[.!?]' '{gsub(/^[ \t\n]+/,"",$0); print $0 (RT ? RT : "")}'


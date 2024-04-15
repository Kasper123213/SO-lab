#!/usr/bin/bash

#7. Porównanie zawartości zadanego katalogu z listą plików (nazwa katalogu i pliku z listą zadawana w argumentach skryptu). Należy wygenerować listę plików brakujących w katalogu i takich, które nie są na liście.



katalog=$1
plik=$2


comm -13 <(ls -1 "$katalog") <(sort "$plik")
comm -23 <(ls -1 "$katalog") <(sort "$plik")

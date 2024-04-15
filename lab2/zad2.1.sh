#!/usr/bin/bash
#W zadanym katalogu ($1) znajdź podkatalogi, zawierające dowiązania symboliczne do obiektów w tym katalogu ($1). 

katalog=$1

for subdir in "$katalog"/*; do
	
	for file in "$subdir"/*; do
		has_symlink=0
		if [ -L "$file" ]; then	
			for file2 in "$katalog"/*;do
				if [ "$(realpath "$file")" == "$(realpath "$file2")" ]; then
					has_symlink=1
					break
				fi
			done
		fi
		if [ "$has_symlink" -eq 1 ]; then
			echo "$file"
		fi
	done


done

#!/usr/bin/bash

d="$1"
o="$2"

realpath_d=$(realpath "$d")
realpath_o=$(realpath "$o")

if [ "$realpath_d" = "$realpath_o" ]; then
    echo "Directories are the same."
else
    echo "Directories are different."
fi

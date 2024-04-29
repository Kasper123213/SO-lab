#!/usr/bin/bash
#W zadanym drzewie katalogów znaleźć dowiązania symboliczne „wiszące” (nie wskazujące na istniejące obiekty). 

katalog="$1"

find "$katalog" -xtype l -print 

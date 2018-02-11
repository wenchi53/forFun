#!/bin/bash

for file in *.tar.gz
do
	mkdir $(echo $file | sed "s/\.tar.gz//")
	mv $file ./$(echo $file | sed "s/\.tar.gz//")
	cd ./$(echo $file | sed "s/\.tar.gz//")
	tar zxvf *
	cd ..
	#remove=$file
	#echo $remove
done

rm ./*/*.tar.gz
#!/bin/bash

for year in 2015 2016 2017
do
	cd $year
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
	cd ..
done
#!/bin/bash

for file in old_dir/*
do
	mv "$file" new_dir/
	echo "Datoteka prebačena"
	sleep 3
done

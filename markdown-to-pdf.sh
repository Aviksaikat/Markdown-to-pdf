#!/bin/bash

if [ "$#" -ne 2 ]; 
then 
	echo "usage: $0 <input.md> <output.md>"
	exit
fi


# If the template not present cp it to the location 
if [ ! -e /usr/share/pandoc/data/templates/eisvogel.latex ];
then 
	sudo cp ./templates/eisvogel.latex /usr/share/pandoc/data/templates/eisvogel.latex 
fi

pandoc $1 -o $2 --from markdown --template eisvogel --listings


if [ $? -eq 0 ];
then 
	evince $2 || okular $2 
fi
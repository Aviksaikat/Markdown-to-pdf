#!/bin/bash

# Usage 
if [ "$#" -ne 2 ]; 
then 
	echo "usage: $0 <input.md> <output.md>"
	exit
fi


# If the template not present cp it to the location 
if [ ! -e /usr/share/pandoc/data/templates/eisvogel.latex ];
then 
	sudo cp "$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"/templates/eisvogel.latex /usr/share/pandoc/data/templates/eisvogel.latex 
fi

# Doing the magic
pandoc $1 -o $2 --from markdown --template eisvogel --listings 2>/dev/null

# If the magic is successcful open the pdf
if [ $? -eq 0 ];
then 
	evince $2 || okular $2 
fi
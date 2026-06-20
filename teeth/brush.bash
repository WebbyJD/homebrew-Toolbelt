#!/bin/bash

SOURCE=${BASH_SOURCE[0]%/*}

echo Enter commands you wish to associate with tooth "$1"
temp=""
echo "$temp" > $SOURCE/$1.tooth

until [ "$temp" = "done" ]; do
	echo "$temp"
	echo "$temp" >> $SOURCE/$1.tooth
	read g
	temp=$g
done
echo Tooth $1 created

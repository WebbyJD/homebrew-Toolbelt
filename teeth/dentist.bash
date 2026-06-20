#!/bin/bash
SOURCE=${BASH_SOURCE[0]%/*}

tooth="$SOURCE/$1.tooth"

while read -r line; do
	$line
done <$tooth


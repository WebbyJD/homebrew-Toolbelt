#!/bin/bash

SOURCE=${BASH_SOURCE[0]%/*}

while [[ $# -gt 0 ]]; do
	case $1 in
		-h|--help)
			cat $SOURCE/help.txt
			exit 1
			;;
		-f|--file)
			FILE="$2"
			shift
			shift
			;;
		-t|--tooth)
			TOOTH="$2"
			CHOICE="$3"
			if [ $TOOTH = "list" ]; then ls $SOURCE/teeth/*.tooth;
			else
				if [ $CHOICE = "record" ]; then source $SOURCE/teeth/brush.bash "$TOOTH";
				else source $SOURCE/teeth/$TOOTH.tooth;
				fi
			fi
			shift
			shift
			shift
			;;
		-p|--prime)
			PRIME="$2"
			$SOURCE/Cpp/prime.out $PRIME
			echo ""
			shift 
			shift
			;;
		-s|--sqrt)
			SQR="$2"
			$SOURCE/Cpp/sqrt.out $SQR
			echo ""
			shift 
			shift 
			;;
		-l|--lavender)
			LINK=$2
			OUTPUT=$3
			source $SOURCE/PyVenv/bin/activate
			python3 $SOURCE/Python/scrape.py "$LINK" "$OUTPUT"
			shift
			shift
			shift
			;;
		-*|--*)
			echo "Unknown option $1"
			exit 1
			;;	
		*)
			POSITIONAL_ARGS+=($1)
			shift
			;;
	esac	
done

set -- "${POSITIONAL_ARGS[@]}" 

#!/bin/sh

EXTENSION=$1
DIR=${2:-.}

WILDCARD_PATH="$DIR/*.$EXTENSION"
COUNT=0

for file in $WILDCARD_PATH; do
    if [ -f "$file" ]; then
        COUNT=$((COUNT + 1))
    fi
done

echo "No. of file with extension $EXTENSION in $DIR: $COUNT"
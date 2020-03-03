#!/bin/bash

DIR=$1
DEST=$2

if [ ! -d "$DIR" ]; then
    echo "No such directory $DIR"
    exit
else
    if [ ! -d "$DEST" ]; then
        mkdir $DEST
    fi
    for FILE in $DIR/*.md; do
        if [ -e $FILE ]; then
            NOTEBOOK=`sed "s/ //g" $FILE | grep tags |cut -d ":" -f 2`
            NOTE_PATH=`echo ${NOTEBOOK#*/} |cut -d "]" -f 1`
            mkdir -p ${DEST}"/"${NOTE_PATH}
            # echo ${DEST}"/"${NOTE_PATH}
            cp $FILE ${DEST}"/"${NOTE_PATH}
        fi
    done
fi
#!/bin/bash

$DIR = $1

for FILE in DIR; do
    $PATH = `sed "s/ //g" $FILE | grep tags |cut -d ":" -f 2 |cut -d "[" -f 2 |cut -d "]" -f 1 | cut -d "Notebooks/" -f 2`
done

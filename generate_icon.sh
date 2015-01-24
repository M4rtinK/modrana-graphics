#!/bin/bash
HEIGHT=$1
EXTENSION=$2
INPUT=$3
OUTPUT=`echo ${INPUT} | sed s/icon_//`

echo ${OUTPUT}.${EXTENSION}

inkscape --without-gui --export-plain-svg --force icons.svg -i $INPUT -e icons/${OUTPUT}.${EXTENSION} -h ${HEIGHT}

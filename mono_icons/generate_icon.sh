#!/bin/bash
HEIGHT=$1
EXTENSION=$2
OUTPUT_FOLDER=$3
INPUT=$4
OUTPUT=`echo $INPUT | sed s/mono_icon_//`

echo ${OUTPUT}.${EXTENSION}

echo inkscape --without-gui --export-plain-svg --force ../icons.svg -i $INPUT -e ${OUTPUT_FOLDER}/${OUTPUT}.${EXTENSION} -h ${HEIGHT}
inkscape --without-gui --export-plain-svg --force ../icons.svg -i $INPUT -e ${OUTPUT_FOLDER}/${OUTPUT}.${EXTENSION} -h ${HEIGHT}

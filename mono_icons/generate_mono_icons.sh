#!/bin/bash
ICON_IDS=`cat ../icons.svg | grep -o -E 'mono_icon_[0-9A-Za-z_]*'`

HEIGHT=88
HIGHRESS_HEIGHT=176
EXTENSION="png"
if [ $1 ];then EXTENSION=$1;fi

echo ${icon_ids}

#parallel inkscape --without-gui --export-plain-svg --force ../icons.svg -e icons/${b}.${extension} -h ${height} -i ::: $icon_ids

rm -rf icons/*
rm -rf icons_highress/*

echo "== generating mono icons =="
parallel --jobs 10 bash generate_icon.sh $HEIGHT $EXTENSION "icons" ::: $ICON_IDS 
echo "== generating highres mono icons =="
parallel --jobs 10 bash generate_icon.sh $HIGHRESS_HEIGHT $EXTENSION icons_highress ::: $ICON_IDS 

rm -f "--force"

echo "== mono icons generated =="

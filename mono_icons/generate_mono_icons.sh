#!/bin/bash
icon_ids=`cat ../icons.svg | grep -o -E 'mono_icon_[0-9A-Za-z_]*'`

height=88
highress_height=176
extension="png"
if [ $1 ];then extension=$1;fi


echo ${icon_ids}

rm -rf icons/*
rm -rf icons_highress/*

for i in $icon_ids
do
 b=`echo $i | sed s/mono_icon_//`
 echo $b
 inkscape --without-gui --export-plain-svg --force ../icons.svg -i $i -e icons/${b}.${extension} -h ${height}
 inkscape --without-gui --export-plain-svg --force ../icons.svg -i $i -e icons_highress/${b}.${extension} -h ${highress_height}
done

rm -f "--force"

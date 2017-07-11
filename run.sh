#!/bin/bash

ftiDir=/home/sdi/Development/FTI/fti

curDir=`pwd`

cd $ftiDir

echo patch -p0 < "$curDir/CMakeLists.txt.patch"
patch -p0 < "$curDir/CMakeLists.txt.patch"

cd src

for file in `cd "$curDir/src";ls *.patch`
do
	echo patch -p0 < "$curDir/src/$file"
	patch -p0 < "$curDir/src/$file"
done

rm -rf deps/jerasure

#!/bin/bash

#ftiDir=/home/sdi/Development/FTI/fti
ftiDir=[please set your local path of FTI here]

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

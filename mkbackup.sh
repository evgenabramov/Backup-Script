#!/bin/bash

catalog_name=$1
archive_name=$2
current_directory=$(pwd)

cd $HOME
if [ ! -d "$catalog_name" ]
then
	mkdir "$catalog_name"
fi

count=0

for extension in $@
do 
	count=$(( $count + 1 ))
	if [ $count -ge 3 ]
	then
		paths=$(find $HOME -type f -name "*.$extension")
		for path in $paths
		do
			filename_part=$(basename "$path" ".$extension")
			filename="$filename_part.$extension"
			id=1
			while [ -e "$catalog_name/$filename" ]
			do
				filename="$filename_part-$id.$extension"
				id=$(( $id + 1 ))
			done
			cp $path "$HOME/$catalog_name/$filename"
		done
	fi
done

tar -czf $archive_name "$catalog_name"
cd $current_dircetory
echo "done"


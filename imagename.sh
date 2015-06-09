#!/bin/bash

repository=pinterb

# search images from DockerHub
docker search $repository > temp1.txt

# change space to newline
sed s/" "/\\n/ temp1.txt > temp2.txt

# get image
cat temp2.txt | grep $repository/ > temp3.txt

# change newline to space
cat temp3.txt | tr -d "\n" > temp4.txt

sed s/$repository/" "$repository/g temp4.txt > temp5.txt

echo "" >> temp5.txt

cat temp5.txt

#!/bin/sh

BRANCH=`git branch | grep "* " | sed -e "s/* //g"`

count=1
message=""
while [ "$#" -ge "1" ]; do
	message="$message $1"
	shift
	let count=$count+1
done
echo $BRNACH

git add .
git commit -m "$message"
git push origin $BRANCH
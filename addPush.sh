#!/bin/sh

BRANCH=`git branch | grep -v "master" | sed -e "s/* //g"`


git add .
git commit -m "$1 commit"
git push origin $BRANCH
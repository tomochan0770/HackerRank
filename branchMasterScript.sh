#!/bin/sh

BRANCH=`git branch | grep -v "master" | sed -e "s/* //g"`

git checkout master
git merge $BRANCH
git branch -d $BRANCH
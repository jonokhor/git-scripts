#!/bin/bash
commitish=$1
remote=$2

if [ -z "$commitish" ]; then
	commitish="HEAD"
fi

if [ -z "$remote" ]; then
	remote="origin"
fi

git push "$remote" +"$commitish"
#!/bin/bash
branch=$1
remote=$2

if [ -z "$branch" ]; then
	branch="HEAD"
fi

if [ -z "$remote" ]; then
	remote="origin"
fi

git push "$remote" +"$branch"
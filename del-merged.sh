#!/bin/bash
branch=$1

if [ -z "$branch" ]; then
	branch="HEAD"
fi

git branch --merged "$branch" \
	| grep -v \* \
	| grep -v "$branch" \
	| grep -v master \
	| xargs -r git branch -D
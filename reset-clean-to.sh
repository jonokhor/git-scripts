#!/bin/bash
git add -A
git commit -m 'RESET SAVEPOINT' > /dev/null
git reset $1 --hard
#!/bin/bash

#fetches the named remotes
#and checks if they exist first

if [ $# -eq 0 ]
then echo 'remote name(s) must be provided'
    exit 1
fi

for var in $@
do
    c=$(git remote | grep -c $var)
    if [ $c -eq 1 ]
    then
        eval "git fetch $var"
    else
        echo "remote $var does not exist"
    fi
done

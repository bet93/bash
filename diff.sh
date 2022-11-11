#!/bin/bash

git log -1 HEAD > diff2.txt

# compare the last commit to the previous comit
if cmp -s "./resources/diff.txt" "diff2.txt"
then
    echo "Files are the same"
    rm diff2.txt
    exit 1
else
    echo "Files are different"
    rm ./resources/diff.txt
    mv diff2.txt ./resources/diff.txt
fi



#!/bin/bash


cd $1


echo "file * -b | sort | cut -f 1-2 -d ' ' | uniq -c"

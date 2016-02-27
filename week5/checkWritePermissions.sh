#!/bin/bash

if [ -w $1 ]
 then
    echo "Write permission is granted on $1"
 else
    echo "Write permission is NOT granted on $1"
fi 

#!/bin/bash

allProcesses=`ps -ef | wc -l`
rootProcesses=`ps -U root | wc -l`
nonRootProcesses=`expr $allProcesses - $rootProcesses`

if [ $nonRootProcesses -gt $1 ]
 then
  echo `date` "Max number of non-root $count process exceeded!" >> wk2.log
fi

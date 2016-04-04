#!/bin/bash

FREQUENCY=$1;
INTERVAL=$2;
OUTPUTLOC=$3;
TIMESTAMP=`date +%Y-%m-%d-%H:%M:%S`;
FILENAME="mpstat-data-$TIMESTAMP";
FILEOUTPUT=$OUTPUTLOC/$FILENAME.dat;

#If dir empty then exit
if [ -z "$OUTPUTLOC" ]
  then 
    echo "No directory specified. Please enter an output directory";
    exit;
  else
    echo "Output Directory: $OUTPUTLOC";
fi

echo;

#Try make the directory first
if [ -d $OUTPUTLOC ]
  then
    echo "Directory exists";
  else
    echo "Directory doesn't exist";
    mkdir $OUTPUTLOC;

    # Do a check for error code
    if [ "$?" -eq 1 ]
     then
        echo "Error creating directory. Please try a different location or ensure correct permissions are set";
	exit;        
    fi
fi

echo;

#Run mpstat, Redirect to a file
echo "Running mpstat";
mpstat $FREQUENCY $INTERVAL > $FILEOUTPUT;
echo "Mpstat complete";

#!/bin/bash


if [ -e $HOME/backup  ]
then 
    tar -cvpzf $HOME/backup/backup.tar.gz $HOME/eaa
else
    mkdir $HOME/backup
    tar -cvpzf $HOME/backup/backup.tar.gz $HOME/eaa
fi

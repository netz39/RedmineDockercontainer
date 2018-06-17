#!/bin/bash

BASEDIR=/tmp/backups/

BCKDIR=$(date +%Y-%m)
BCKPFX=$(date +%F)
BCKFILE=$BASEDIR/$BCKDIR/redmine_$BCKPFX.sql

mkdir -p $BASEDIR/$BCKDIR

mysqldump --user redmine redmine > $BCKFILE
bzip2 $BCKFILE

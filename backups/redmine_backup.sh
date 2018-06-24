#!/bin/bash

BASEDIR=/tmp/backups/

BCKDIR=$(date +%Y-%m)
BCKPFX=$(date +%F)
BCKFILE=$BASEDIR/$BCKDIR/redmine_$BCKPFX.sql

mkdir -p $BASEDIR/$BCKDIR

mysqldump --user root -p$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE > $BCKFILE

bzip2 $BCKFILE

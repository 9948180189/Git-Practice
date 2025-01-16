#!/bin/bash
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

USAGE(){
    echo -e "$RUSAGE:: $N sh 19-buckup.sh <source> <destination> <days(optional)>"
}
if [ $# -lt 2 ]
then
    USAGE
fi

if [ ! -d $SOURCE_DIR ]
then
    echo "$SOURCE_DIR does not exits...Please check"
fi

if [ ! -d $DEST_DIR ]
then
    echo "$DEST_DIR does not exits...Please check"
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "Files: $FILES"

if [ ! -z $FILES ]
then
    echo "Files are found"
else
    echo "No files older than $DAYS"
fi        
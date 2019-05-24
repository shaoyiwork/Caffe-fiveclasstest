#!/usr/bin/env sh
DATA=data/re/
MY=./

echo "Create train.txt..."
rm -rf $MY/train.txt

find $DATA/train -name 3*.jpg | cut -d '/' -f4-5 | sed "s/$/ 0/">>$MY/train.txt
find $DATA/train -name 4*.jpg | cut -d '/' -f4-5 | sed "s/$/ 1/">>$MY/train.txt
find $DATA/train -name 5*.jpg | cut -d '/' -f4-5 | sed "s/$/ 2/">>$MY/train.txt
find $DATA/train -name 6*.jpg | cut -d '/' -f4-5 | sed "s/$/ 3/">>$MY/train.txt
find $DATA/train -name 7*.jpg | cut -d '/' -f4-5 | sed "s/$/ 4/">>$MY/train.txt

echo "Create test.txt..."
rm -rf $MY/test.txt

find $DATA/test -name 3*.jpg | cut -d '/' -f4-5 | sed "s/$/ 0/">>$MY/test.txt
find $DATA/test -name 4*.jpg | cut -d '/' -f4-5 | sed "s/$/ 1/">>$MY/test.txt
find $DATA/test -name 5*.jpg | cut -d '/' -f4-5 | sed "s/$/ 2/">>$MY/test.txt
find $DATA/test -name 6*.jpg | cut -d '/' -f4-5 | sed "s/$/ 3/">>$MY/test.txt
find $DATA/test -name 7*.jpg | cut -d '/' -f4-5 | sed "s/$/ 4/">>$MY/test.txt

echo "All done"

#!/bin/bash

#Stop script if any command gives error after run
set -e

#Set full path for sys commands
RM=$(which rm)
MKDIR=$(which mkdir)
AUTOVALA=$(which autovala)
CMAKE=$(which cmake)
MAKE=$(which make)
#Set build dir
BUILD_DIR="./build/"

#Check if BUILD_DIR exists and is empty. Prompt user before removing it
if [[ -d "$BUILD_DIR" && "$(ls -A $BUILD_DIR)" ]]; then
   echo  -e "WARNING: $BUILD_DIR exists and is not empty!"
   read -p "Overwrite? (Y/N)" -n 1 -r
   echo
   if [[ $REPLY =~ ^[Yy]$ ]]; then
      $RM -Rv $BUILD_DIR/*
   else
      echo "Aborted."
      exit 1
   fi
else
   #Create BUILD_DIR
   $MKDIR -p $BUILD_DIR
fi

#RUN AUTOVALA & MAKE PROJECT
cd $BUILD_DIR
$AUTOVALA po
$AUTOVALA update
$CMAKE ..
$MAKE

#RUN PROGRAM
./src/telefax

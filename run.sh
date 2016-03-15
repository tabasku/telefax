#!/bin/bash

#Stop script if any command gives error after run
set -e

COMMAND_ARGUMENT="$1"
BUILD_DIR=$(pwd)"/build/"
RUN_DIR=$(pwd)"/build/bin/"
#Set full path for sys commands

#Check if BUILD_DIR exists and is empty. Prompt user before removing it
Clear (){
    RM=$(which rm)
    MKDIR=$(which mkdir)
    echo "Clearing build directory"
    if [[ -d "$BUILD_DIR" && "$(ls -A $BUILD_DIR)" ]]; then
        echo  -e "WARNING: Cleaning $BUILD_DIR!"
        $RM -Rv $BUILD_DIR/*
    else
        #Create BUILD_DIR
        $MKDIR -p $BUILD_DIR
    fi
}

Build (){
    cd $BUILD_DIR
    AUTOVALA=$(which autovala)
    CMAKE=$(which cmake)
    MAKE=$(which make)
    
    $AUTOVALA refresh
    $AUTOVALA cmake
    $CMAKE -DCMAKE_BUILD_TYPE=Debug -DDEBUG=on -DCMAKE_INSTALL_PREFIX=$RUN_DIR .. 
    $MAKE
    $MAKE install
}

UpdateLanguageFiles(){
    $AUTOVALA po
}

case "$1" in
        clear) Clear
            ;;
        build) Clear && Build
            ;;
        update-language-files) Clear && UpdateLanguageFiles && Build
            ;;
        *) echo "Bad command argument $1"
            ;;
esac

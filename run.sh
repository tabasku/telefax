#! /bin/sh

cd ./build/

rm * -Rf
autovala update

cmake ..
make
./src/telefax

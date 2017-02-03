#!/bin/bash

./build.sh -v
rm -rf work/
./build_x86_64.sh -v
rm -rf work/
./build_i686.sh -v

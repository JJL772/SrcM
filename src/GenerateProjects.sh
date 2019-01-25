#!/bin/bash

@Echo off

echo Generating project files...\n

cmake -H. -Wno-dev  -DLINUX32=1 -DDEBUG=1 -DPOSIX=1 -BMakefiles/ -G "Unix Makefiles"

echo Finished!

sleep 100

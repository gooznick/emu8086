#!/bin/bash

# This file will be the deafult CMD of the docker image

if [[ ! -f /home/user/.wine/drive_c/emu8086/emu8086.exe ]]
then
    wine `ls /opt/emu8086/*.exe`
fi
wine /home/user/.wine/drive_c/emu8086/emu8086.exe
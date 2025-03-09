#!/bin/bash

if [ "$(id -u)" -eq 0 ]
then
        if ping  -c 1 -W 1 8.8.8.8
        then
                while true;
                do 
                        echo "update and upgrade"
                        apt update && sudo apt full-upgrade -y
                        break
                done
        else 
                echo "Your device is no connected to the Internet."
        fi
else
        echo "Your are not root user"
fi

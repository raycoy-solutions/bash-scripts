#!/bin/bash

which tree > /dev/null
if [[ $? -ne 0 ]]
then
    if [[ $OSTYPE == "darwin"* ]]
    then
        echo "Installing tree on macOS"
        brew install tree
        echo "Installed tree successfully"
        tree ~
    elif [[ $OSTYPE == "linux-gnu"  ]] 
    then
        echo "Installing tree on ubuntu"
        sudo apt install tree -y > /dev/null # this will work on only ubuntu distros
        echo "Installed tree successfully"
        tree ~
    else
        echo "Sorry! I don't know your OS"
    fi
else
    echo "tree is installed"
fi

# TODO: Add current Amazon Linux 2 to the mix
#!/bin/bash

which tree
if [[ $? -eq 0 ]]
then 
    echo "tree is installed"
else
    echo "tree is not installed"
fi
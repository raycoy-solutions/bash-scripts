#!/bin/bash

read -p "Enter a number:" NUM
if [[  $NUM -gt 1 ]]
then
    echo "Your number is greater than 100"
    echo
else
    echo "Your number is less than 100"
fi
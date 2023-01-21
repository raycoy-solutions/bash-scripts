#!/bin/bash

myvar="Hello!"
echo "The value of the myvar variable is : $myvar"
myvar="Bonjour!"
echo "The value of the myvar variable is : $myvar"

declare -r myname="Scott"
echo "The value of the myname variable is : $myname"
myname="Mike"
echo "The value of the myname variable is : $myname"

declare -l lowerstring="This is some TEST!"
echo "The value of the lowerstring variable is : $lowerstring"
lowerstring="Let's CHANGE the VALUE!"
echo "The value of the lowerstring variable is : $lowerstring"

declare -u upperstring="This is some TEXT!"
echo "The value of the upperstring variable is : $upperstring"
upperstring="Let's CHANGE the VALUE!"
echo "The value of the upperstring variable is : $upperstring"
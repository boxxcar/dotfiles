#!/bin/bash

if (acpi -a | grep "on-line") 
then
   exec xbacklight -set 100

elif (acpi -a | grep "off-line")
then
   exec xbacklight -set 20

else
   exit
fi

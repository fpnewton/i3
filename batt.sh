#! /bin/sh

adapter=`acpi -a | awk -F ':' '{print $2;}' | sed 's/ //g';`;
battery=`acpi -b | awk -F ',' '{print $2;}' | sed 's/ //g';`;

if [[ $adapter == 'on-line' ]]; then
	sign="+"
else
	sign="-"
fi


echo $sign$battery

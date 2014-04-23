#! /bin/sh

MAX=`cat /sys/class/backlight/acpi_video0/max_brightness`
PC=$1

echo "$PC $MAX" | awk '{print int((($1 - 1)/100 * $2) + 1)}' > /sys/class/backlight/acpi_video0/brightness

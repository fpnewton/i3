#! /bin/sh

AB=`cat /sys/class/backlight/acpi_video0/brightness`
MB=`cat /sys/class/backlight/acpi_video0/max_brightness`
echo "$AB*100/$MB" | bc -l | xargs printf "%1.0f"

#!/bin/bash

stat="$(cat /sys/class/power_supply/BAT0/status)"
echo $stat
if [ $stat == "Charging" ];
then
    echo "0" >> battery_checked
    echo "0" >> battery_critically_checked
    exit
fi

now="$(cat /sys/class/power_supply/BAT0/energy_now)"
full="$(cat /sys/class/power_supply/BAT0/energy_full)"

perc=$(((now*100)/full))
echo $perc

if [ $perc -lt 10 ];
then
    checked=$(cat battery_checked)
    echo $checked
    if [ $checked == "1" ];
    then
        echo "Already notified about battery"
    else
	echo 1 >> battery_checked
	notify-send "Battery very low!"
	sudo cpupower frequency-set -g powersave
    fi
fi


if [ $perc -lt 5 ];
then
    checked=$(cat battery_crittically_checked)
    echo $checked
    if [ $checked == "1" ];
    then
        echo "Already suspended"
    else
	echo 1 >> battery_crittically_checked
	notify-send "Battery critically low: suspending"
	systemctl suspend
    fi
fi



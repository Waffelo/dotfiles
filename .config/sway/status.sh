#!/bin/bash

MULLVAD=$(
if mullvad status | grep -q "Connected" ; then
  echo "[🦊🪢]"
else
  echo "[🦊💤]"
fi
)

HDD=$(
Drives=("/dev/mapper/hdd1" "/dev/mapper/hdd2")

for drive in "${Drives[@]}"; do
    if [ -e "$drive" ]; then
        DName="[💾 $(echo $drive | awk -F '/' '{print $4}' | tr 'a-z' 'A-Z'):"
        echo $DName
        if [  -b "$drive" ]; then
            echo "$(df -h | grep "$drive" | awk '{print $5}')]"
        else
            echo "🚫]"
        fi
    fi
done
)

BLUETOOTH=$(
    device=$(bluetoothctl info | grep "Name:" | awk '{ print $2 }')
    if [ -n "$device" ]; then
        echo -e "[🔗 $device ]"
    fi
)

BATTERY=$(
if [ -f /sys/class/power_supply/BAT0/capacity ]; then
	
	Location="/sys/class/power_supply/"
	Batteries=("BAT0" "BAT1")
	
	for battery in "${Batteries[@]}"; do

		bat_status=$(cat ${Location}${battery}/status)
		bat_capacity=$(cat ${Location}${battery}/capacity)
		

		if [ "$bat_status" == "Discharging" ]; then
			echo "[🔋📉 ${battery}: ${bat_capacity}%]"
		elif [ "$bat_status" == "Charging" ]; then
        		echo "[🔋🔌 ${battery}: ${bat_capacity}%]"	
		else
			echo "[🔋 ${battery}: ${bat_capacity}%]"
		fi
	done
fi
)

NETWORK=$(

CheckWifi=$(cat /sys/class/net/wlp1s0/operstate)

if [[ "$CheckWifi" == "up" ]]; then
	SSID=$(nmcli -t -f NAME,DEVICE con show --active | grep wlp1s0 | awk -F: '{print $1}')
	echo "[🛜 $SSID]"
fi

)

CPU_TEMP=$(
    if [ -f /sys/class/thermal/thermal_zone0/temp ]; then
        cpu_temp=$(cat /sys/class/thermal/thermal_zone0/temp)
        cpu_temp=$((cpu_temp / 1000))

        echo "[🔲 ${cpu_temp}°C]"
    elif [ -f /sys/class/hwmon/hwmon2/temp1_input ]; then
        cpu_temp=$(cat /sys/class/hwmon/hwmon2/temp1_input)
        cpu_temp=$((cpu_temp / 1000))
        
        echo "[🔲 ${cpu_temp}°C]"
    fi
)


LAYOUT="[ ⌨️ $(swaymsg -t get_inputs | grep "active_layout_name" | awk '{print $2 $3}' | sed s/\"//g | sed s/,//g | tail -n 1 | cut -c 1-3) ]"
VOLUME="[🔊 $(pulsemixer --get-volume | awk '{print $1}')%]"
MEMORY="[🐏 $(free -h | head -2 | tail -1 | awk '{print $3}')/$(free -h | head -2 | tail -1 | awk '{print $2}')]"
DATE="[📅 $(date "+%d/%m/%y")]"
TIME="[🕓 $(date "+%H:%M")]"


# --- Main
echo $BLUETOOTH $NETWORK $HDD $MULLVAD $MEMORY $CPU_TEMP $BATTERY $VOLUME $LAYOUT $DATE $TIME

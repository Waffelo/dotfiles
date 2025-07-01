#!/bin/bash

MULLVAD=$(
if mullvad status | grep -q "Connected" ; then
  #echo "🦊: $(mullvad status | cut -d " " -f5-)"
  #echo "🦊: $(mullvad status | head -1 | cut -c31-60)"
  echo "[🦊:🪢]"
else
  echo "[🦊💤]"
fi
)

HDD=$(
	Drives=("/dev/mapper/hdd1" "/dev/mapper/hdd2")

for drive in "${Drives[@]}"; do
	DName="[💾 $(echo $drive | awk -F '/' '{print $4}' | tr 'a-z' 'A-Z'):"
	echo $DName
	if [  -b "$drive" ]; then
		echo "$(df -h | grep "$drive" | awk '{print $5}')]"
	else
		echo "🚫]"
	fi
done
)

LAYOUT="[ ⌨️ $(swaymsg -t get_inputs | grep "active_layout_name" | awk '{print $2 $3}' | sed s/\"//g | sed s/,//g | tail -n 1 | cut -c 1-3) ]"
VOLUME="[🔊 $(pactl get-sink-volume alsa_output.pci-0000_0c_00.4.analog-stereo | awk '{print $5}')]"
MEMORY="[🐏 $(free -h | head -2 | tail -1 | awk '{print $3}')/$(free -h | head -2 | tail -1 | awk '{print $2}')]"
DATE="[📅 $(date "+%d/%m/%y")]"
TIME="[🕓 $(date "+%H:%M:%S")]"



# --- Main
echo $HDD $LAYOUT $MULLVAD $VOLUME $MEMORY $DATE $TIME

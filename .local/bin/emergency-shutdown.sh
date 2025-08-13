#!/bin/bash
# Log what's happening
echo "Emergency shutdown initiated" >> /tmp/emergency.log

# Try normal shutdown first
doas shutdown -h now

# If that fails, try poweroff
sleep 2
doas poweroff -f

# If that fails, try halt
sleep 2
doas halt -f

# Nuclear option - direct kernel
sleep 2
echo o | doas tee /proc/sysrq-trigger

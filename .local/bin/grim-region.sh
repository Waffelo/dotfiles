date=$(date +%d-%m-%Y)
time=$(date +%Hh-%Mm-%Ss)

work_dir="$(xdg-user-dir Pictures)/Screenshots/$date/"
taken_pic="$work_dir/$date.png"


if [ ! -d "$work_dir" ]; then
    mkdir -p $work_dir
fi

grim -g "$(slurp)" $taken_pic
dunstify --icon=$taken_pic "Dragon photographer" "Regional screenshot has been taken. <i>($time)</i>"
wl-copy < $taken_pic 


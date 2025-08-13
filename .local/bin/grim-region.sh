mkdir -p $(xdg-user-dir PICTURES)/Screenshots/$(date +%d-%m-%Y)

grim -g "$(slurp)" $(xdg-user-dir PICTURES)/Screenshots/$(date +%d-%m-%Y)/$(date +'%Hh-%Mm-%Ss.png') 
wl-copy < $(xdg-user-dir PICTURES)/Screenshots/$(date +%d-%m-%Y)/$(date +'%Hh-%Mm-%Ss.png')
dunstify "Regional Screenshot taken"



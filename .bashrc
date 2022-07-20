
#  __        __     __  __      _
#  \ \      / /_ _ / _|/ _| ___| | ___
#   \ \ /\ / / _` | |_| |_ / _ \ |/ _ \
#    \ V  V / (_| |  _|  _|  __/ | (_) |
#     \_/\_/ \__,_|_| |_|  \___|_|\___/
#
#  Welcome to my .bashrc traveler! There is nothing much to see here
#  but I hope you will like it! If you want to, you can check out my
#  social media links.
#
#   Website | waffelo.net
#   Twitter | @Waffelo_
#   Discord | @Waffelo#1763
#   Youtube | https://www.youtube.com/c/waffelo
# 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# -- ///// Aliases ///// -- #

alias doom-sync='.emacs.d/bin/doom sync'

# // Directories
alias vimkc='nvim ~/.config/kitty/colors.conf'
alias vimbs='nvim ~/.config/bspwm/bspwmrc'
alias vimsx='nvim ~/.config/sxhkd/sxhkdrc'
alias vimbr='nvim ~/.bashrc'

alias dg='cd ~/Git'

# // Colors
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias dmesg='dmesg --color=always | less'

# // GIT

alias gca='git commit -a'
alias gp='git push'
alias ga='git add'

# // System

alias ls='exa -la'
alias umount='unmount'
alias btc='sudo bluetoothctl'

alias vim='nvim'

alias rm='trash'
alias z='zip -r'

alias exec-order-66='sudo pacman -Qtdq | sudo pacman -Rns -'
alias mv='mv -i'
alias kill-exe='kill $(pgrep exe)' # Kills dumb wine stuff

alias nv="optimus-manager --switch nvidia"

alias au='sudo chmod a+rw /dev/ttyACM0' # Gives me permissions for USB port so I can program my Arduino :3
alias auu='sudo chmod a+rw /dev/ttyUSB0'

# // Developer

alias py='python3'
alias lvim='~/.local/bin/lvim'

# // Fun
alias amongus='among-us-dumpy-gif-maker'


# // Youtube-dl

# Audio Download #
alias yt-mp3='youtube-dl -x --audio-format mp3 --prefer-ffmpeg --output "~/Music/Downloads/%(title)s.%(ext)s"'

# Video Download #
alias yt-mp4='youtube-dl --format mp4 --output "~/Videos/Downloads/%(title)s.%(ext)s"'

# -- ///// Extractor ///// -- #

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# -- ///// Prompt ///// -- #
eval "$(starship init bash)"


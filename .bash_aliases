alias mpv="mpv -fs"
alias ll="ls -l"
alias la="ls -la"
alias lt="ll -ct" #sort by time
alias diff="diff --color='auto'"
alias df="df -x tmpfs -h"
alias pgrep="pgrep -l"
alias ip="ip --color=auto"
alias flashpd="/home/mac/media/games/flashplayerdebugger"
alias flashp="/home/mac/media/games/flashplayer"
alias shorten="export PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '"
alias lengthen="export PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \w\[\033[01;32m\]]\$\[\033[00m\] '"
alias ":q"="exit"

alias xps420_backup="rsync -raP ~/* mac@xps420:~/backups/b1"
alias morning_xeets="cd ~/projects/morning-xeets && source .venv/bin/activate && ./morning-xeets.py"
alias dockerstartup="sudo systemctl start docker.service docker.socket"

alias cowpi_upload="sudo mount /dev/disk/by-label/RPI-RP2 /mnt/cowpi && sudo cp .pio/build/pico/firmware.uf2 /mnt/cowpi"
alias cowpi_build_upload="platformio run && cowpi_upload"

for j in $(seq 0 100);
do 
  l="l"
  for i in $(seq 1 $j); 
  do 
    l="${l}l"
  done
  alias $l="ls -l"
done

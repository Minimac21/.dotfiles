alias mpv="mpv -fs"
alias ll="ls -l"
alias la="ls -la"
alias lt="ll -ct" #sort by time
alias diff="diff --color='auto'"
alias pgrep="pgrep -l"
alias ip="ip --color=auto"
alias flashpd="/home/mac/media/games/flashplayerdebugger"
alias flashp="/home/mac/media/games/flashplayer"
alias obsidian="/opt/Obsidian-1.3.5.AppImage"
alias sqlserversudo="sudo /opt/mssql/bin/sqlservr"
alias shorten="export PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '"
alias lengthen="export PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \w\[\033[01;32m\]]\$\[\033[00m\] '"
alias morning_xeets="cd ~/projects/morning-xeets && source .venv/bin/activate && ./morning-xeets.py"
alias dockerstartup="sudo systemctl start docker.service docker.socket"

for j in $(seq 0 100);
do 
  l="l"
  for i in $(seq 1 $j); 
  do 
    l="${l}l"
  done
  alias $l="ls -l"
done

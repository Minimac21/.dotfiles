function cht() {
  url="cht.sh/"
  declare -i x=1
  if [ "$#" -ge 1 ]; then
    for n in $(seq 1 $#); do
      url+=${(P)x}+
      x=$(( $x + 1 ))
    done
    url=${url%?}
    echo $url
    curl -s $url
  fi
}

alias mpv="mpv -fs"
alias ll="ls -l"
alias la="ls -la"
alias lt="ll -ct" #sort by time
alias diff="diff --color='auto'"
alias pgrep="pgrep -l"
alias flashpd="/home/mac/media/games/flashplayerdebugger"
alias flashp="/home/mac/media/games/flashplayer"
alias obsidian="/opt/Obsidian-1.3.5.AppImage"
alias sqlserversudo="sudo /opt/mssql/bin/sqlservr"
alias shorten="export PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '"
alias lengthen="export PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \w\[\033[01;32m\]]\$\[\033[00m\] '"
hgrep() {
  history | grep $1 | grep -v grep 
}
wich(){
  readlink -f $(which $1)
}
unl="mdepries@cse.unl.edu"
export VISUAL="/usr/bin/vim"
export EDITOR="/usr/bin/vim"

export HISTSIZE=-1
export HISTFILESIZE=-1


# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

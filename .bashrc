# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# change directory colors
eval "$(dircolors ~/.dircolors)"

# change default Shell
# export PS1="\d \t\n\[\033[38;5;6m\]\w\[$(tput sgr0)\]\n[\[\033[38;5;10m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\]]: \[$(tput sgr0)\]"
# export PS1="\d \t\n\[\033[38;5;6m\]\w\[$(tput sgr0)\]: \[$(tput sgr0)\]"

# git autocomplete
source /usr/share/bash-completion/completions/git

# git bash prompt
# https://github.com/magicmonty/bash-git-prompt
# if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
#  GIT_PROMPT_ONLY_IN_REPO=1
#  source $HOME/.bash-git-prompt/gitprompt.sh
# fi

# add go lang to path
export PATH=$PATH:/usr/local/go/bin
GOPATH=$HOME/go
function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -error $?)"
}
if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# virtualenvwrapper
# https://virtualenvwrapper.readthedocs.io/en/latest/
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'
source /usr/local/bin/virtualenvwrapper.sh

# define HashiVault vars
source ~/.env

# colorize some stuff
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33'
export COLOR_NC='\e[0m' # No Color
export COLOR_BLACK='\e[0;30m'
export COLOR_GRAY='\e[1;30m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_LIGHT_GRAY='\e[0;37m'
export COLOR_WHITE='\e[1;37m'

# case $TERM in
#      xterm*|rxvt*)
#          TITLEBAR='\[\033]0;\H ${NEW_PWD}\007\]'
#           ;;
#      *)
#          TITLEBAR=""
#           ;;
#     esac

# UC=$COLOR_GREEN               # user's color
# [ $UID -eq "0" ] && UC=$COLOR_RED   # root's color

# PS1="$TITLEBAR\n\[${UC}\]\H \[${COLOR_LIGHT_BLUE}\]\${PWD} \[${COLOR_BLACK}\]\\n\[${COLOR_LIGHT_GREEN}\]→\[${COLOR_NC}\] "

# aliases
alias ll="ls -lah"
alias myip='curl ipinfo.io/ip'
alias ansiblecfg="export ANSIBLE_CONFIG=./ansible-local.cfg"
alias config='/usr/bin/git --git-dir=/home/skeutgen/.cfg/ --work-tree=/home/skeutgen'
# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'



PS1='\e[0;32m\u[\#]\e[0;37m:\e[0;36m\w\e[0;37m$ '

alias nano="export TERM='xterm'; nano"
alias visudo="export TERM='xterm'; sudo EDITOR=nano visudo"
alias sudo='sudo -v; sudo '

alias pacman='sudo pacman'
alias snano='sudo export TERM='xterm'; sudo nano'
alias reload='printf "\033c";source ~/.bashrc'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

export TERM="term-256color"

neofetch

# -----
. "$HOME/.cargo/env"
source /usr/share/nvm/init-nvm.sh

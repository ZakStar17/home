
HISTSIZE=10000
HISTFILESIZE=20000

# PS1='\u[\#]:\w$ '
PS1='\[\e[32m\]\u[\#]\[\e[00m\]:\[\e[36m\]\w\[\e[00m\]$ '

# neovim
alias vim=nvim
export EDITOR=nvim

#export TERM=vt100
alias termvt="export TERM='vt100'"
alias termx="export TERM='xterm'"
alias termnormal="export TERM='term-256color'"
alias termnone="unset TERM"

alias visudo="sudo EDITOR=vim visudo"
alias sudo='sudo -v; sudo '

alias pacman='sudo pacman'
alias pacman-key='sudo pacman-key'

alias snano='sudo nano'
alias svim='sudo vim'
alias reload='printf "\033c";source ~/.bashrc'

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias spotify="LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify --enable-features=UseOzonePlatform --ozone-platform=wayland"
alias xspotify="LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify"

alias wisdomcow="fortune | cowsay"
alias raindbowmatrix="cmatrix | lolcat; clear"
alias please="sudo"

alias tt="alacritty &"
alias settouchpad="xinput set-prop 11 272 1"

export PATH=$PATH:$HOME/.local/bin
export XDG_CONFIG_HOME=$HOME/.config

# neofetch
fortune

# -----
# system dependent
source /usr/share/nvm/init-nvm.sh

export PATH=~/.cargo/bin:$PATH

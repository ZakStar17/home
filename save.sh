INIC="$(pwd)"
echo "Starting in $INIC"

# Home configuration
cd ~
echo "$(pwd)"
cp -i .alacritty.yml .bashrc .gitconfig .vimrc .xinitrc $INIC

# .config
cd ~/.config
mkdir $INIC/.config
cp -r -i brinkervii flameshot i3 kde.org vifm $INIC/.config

# Other
cp ~/.psensor/psensor.cfg ./.psensor

# pacman packages
mkdir $INIC/packages
HOST="$(cat /etc/hostname)"
PCPACKAGES="$INIC/packages/$HOST"
pacman -Qet | cut -d" " -f1 >> $PCPACKAGES


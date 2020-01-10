# Install Emacs
sudo snap install emacs --classic
cp ~/.emacs.d/init.el ~/.emacs.d/init.el.bak
cp init.el ~/.emacs.d/

# Start Emacs as daemon
cp emacs.service ~/.config/systemd/user/emacs.service
systemctl enable --user emacs
systemctl stop --user emacs
systemctl start --user emacs
systemctl --user status emacs

# Start Emacs as client
bold=$(tput bold)
normal=$(tput sgr0)
red=$(tput setaf 1)
cat << EOF

${bold}${red}Add the following lines to your .bashrc:${normal}

# Use Emacs client as default editor
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"                  # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode
EOF

cat <<EOF

${bold}${red}Add the following alias to your .bash_aliases:${normal}

alias emacs="emacsclient -cnqua ''"
# Source ^: https://superuser.com/a/1425591/722429
EOF

cat <<EOF

${bold}${red}Restart the terminal or run:${normal} source .bashrc

EOF

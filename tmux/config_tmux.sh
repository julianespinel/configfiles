# Install xsel to make tmux-yank work.
sudo apt-get install xsel
# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp ~/.tmux.conf ~/.tmux.conf.bak
cp .tmux.conf ~/
echo "***** Do not forget to start tmux and run `prefix + I` to install plugins. *****"

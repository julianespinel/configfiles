# Emacs

I use Evil mode for navigation.

## Installation

1. Create a backup for your current init.el file: `cp ~/.emacs.d/init.el ~/.emacs.d/init.el.bak`
1. Download init.el file into the proper directory: `wget -O ~/.emacs.d/init.el "https://github.com/julianespinel/configfiles/blob/master/emacs/init.el"`
1. Start emacs

## My Emacs commands

* Abort operation: `C-g`
* Undo: `C-/`
* Exit: `C-x C-c`
* Save: `C-x C-s`
* Kill buffer: `C-x k`
* Open file: `C-x C-f`
* Change window: `M-o`
* Increase font size: `C-x C-+`
* Decrease font size: `C-x C--`
* Reset font size: `C-x C-0`
* Vertilcal to horizontal: `M-x transpose-frame`
* Flop frames: `M-x flop-frame`
* Open a vertical frame: `C-x 3`
* Open a horizontal frame: `C-x 2`

## Emacs as daemon

### Daemon

1. `cp emacs.service ~/.config/systemd/user/emacs.service`
1. Check the logs: `journalctl --user -f -u emacs`
1. Enable the service:

	``` bash
	systemctl enable --user emacs
	systemctl start --user emacs
	```
1. Check service status: `systemctl --user status emacs`

### Client

1. Add the following lines to your `.bashrc`:
	``` bash
	# Use Emacs client as default editor
	export ALTERNATE_EDITOR=""
	export EDITOR="emacsclient -t"                  # $EDITOR opens in terminal
	export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode
	```
1. Add the following alias to your `.bash_aliases`:
   ```bash
   alias emacs="emacsclient -cnqua ''"
   # Source ^: https://superuser.com/a/1425591/722429
   ```
1. Restart the terminal or run: `source .bashrc`

## Tags

### Erlang

1. Generate erlang tags: `sudo find / -name "*.[he]rl" -print | etags -`
1. How to use them: http://erlang.org/doc/man/erlang.el.html#tags


# Emacs

I use Evil mode for navigation.

## Installation

1. Create a backup for your current init.el file: `cp ~/.emacs.d/init.el ~/.emacs.d/init.el.bak`
1. Download init.el file into the proper directory:`wget  -O ~/.emacs.d/init.el "https://github.com/julianespinel/configfiles/blob/master/emacs/init.el"`
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

# Tags

1. Generate erlang tags: `sudo find / -name "*.[he]rl" -print | etags -`
1. How to use them: http://erlang.org/doc/man/erlang.el.html#tags

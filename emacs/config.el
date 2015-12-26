;;; My Emacs config
(prelude-require-packages '(neotree sublime-themes go-mode powerline))
(load-theme 'spolsky t)
(global-set-key [f8] 'neotree-toggle)
(global-linum-mode t)
(setq prelude-whitespace nil)
(powerline-default-theme)
; (setq-default tab-width 2 standard-indent 2 indent-tabs-mode nil)

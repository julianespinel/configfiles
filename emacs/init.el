;;; Use melpa to manage packages.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;; Hide menu bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;;; show line numbers
(global-linum-mode 1)

;;; turn on highlighting current line
(global-hl-line-mode 1)

;;; turn on bracket match highlight
(show-paren-mode 1)

;;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;;; Evil mode
(package-install 'evil)
(require 'evil)
(evil-mode 1)

;;; Evil comentary
(package-install 'evil-commentary)
(require 'evil-commentary)
(evil-commentary-mode)

;;; monokai
(package-install 'monokai-theme)
(load-theme 'monokai t)

;;; all the icons
(package-install 'all-the-icons)
(require 'all-the-icons)

;;; powerline
(package-install 'powerline)
(require 'powerline)
(powerline-default-theme)

;;; Neotree
(package-install 'neotree)
(require 'neotree)
(global-set-key [f2] 'neotree-toggle)
(setq neo-theme 'nerd)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-stylish-on-save t)
 '(package-selected-packages
   (quote
    (evil-comentary ace-window evil magit flycheck company markdown-mode neotree powerline all-the-icons monokai-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Markdown mode
(package-install 'markdown-mode)
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))


;;; company-mode
(package-install 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0) ; No delay in showing suggestions.
(setq company-minimum-prefix-length 2) ; Show suggestions after entering one character.


;;; Flycheck
(package-install 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)


;;; magit
(package-install 'magit)


;;; backup in one place. flat, no tree structure
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))


;;; Ace window
(package-install 'ace-window)
(global-set-key (kbd "M-o") 'ace-window)


;;; Erlang
; (setq load-path (cons  "/usr/lib/erlang/lib/tools-3.0.2/emacs"
; 		       load-path))
; (setq erlang-root-dir "/usr/lib/erlang")
; (setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
; (require 'erlang-start)

;;; Haskell
(package-install 'haskell-mode)
;;;; Install Intero
(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)

;;; Terminal
;;;; Paste in terminal
(eval-after-load "term"
                 '(define-key term-raw-map (kbd "C-c C-y") 'term-paste))


;;; Custom extras start

;;;; Remove scroll bar
(scroll-bar-mode -1)

;;;; Increase and decrease font
(global-set-key (kbd "s-=") 'text-scale-increase)
(global-set-key (kbd "s--") 'text-scale-decrease)

;;;; Copy to clipboard
(setq x-select-enable-clipboard t)

;;;; Highlight trailing whitespace
(setq-default show-trailing-whitespace t)

;;;; Window resize
(defconst resize-units 3 "Value to increase/decrese windows")

(defun decrease-window-size ()
  "Decrease window size by n units."
  (interactive)
  (shrink-window-horizontally resize-units))


(defun increase-window-size ()
  "Increase window size by n units."
  (interactive)
  (enlarge-window-horizontally resize-units))


(global-set-key (kbd "s-{") 'decrease-window-size)
(global-set-key (kbd "s-}") 'increase-window-size)

;;; Custom extras end


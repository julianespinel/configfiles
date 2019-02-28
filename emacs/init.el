;;; Use melpa to manage packages.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;; Hide menu bar
(menu-bar-mode -1)
(tool-bar-mode -1)

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
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme 'nerd)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (neotree powerline all-the-icons monokai-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

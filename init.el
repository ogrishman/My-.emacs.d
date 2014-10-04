; The package management system
(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
)

; Disable emacs backup files
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files

; Enable emmet-mode for markup modes and css modes 
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

; Package Yasnippet
(require 'yasnippet)
(yas-global-mode 1)


; Projectil plugin
(require 'projectile)


; Projectil Rails plugin
(require 'projectile-rails)

; The Helm plugin
(require 'helm-config)
(helm-mode 1)


; Align with spaces only
(defadvice align-regexp (around align-regexp-with-spaces)
  "Never use tabs for alignment."
  (let ((indent-tabs-mode nil))
    ad-do-it))
(ad-activate 'align-regexp)



; 用 y/n 替代 yes/no
(fset 'yes-or-no-p 'y-or-n-p)
; 默认显示行号
(global-linum-mode 1)
; 使用YaHei Mono 18号字体
(set-default-font "YaHei Mono 18")

; ------------------------------------------------------
; quickrun plugin
; ------------------------------------------------------
; <F7> to run the current buffer (then press "q" to return to your buffer)
(global-set-key (kbd "<f7>") 'quickrun)
(global-set-key (kbd "C-S-y") 'yank-pop)

; Use M-SPC to set mark instead of C-SPC, which is used to change input method
(global-unset-key (kbd "C-SPC"))  
(global-set-key (kbd "M-SPC") 'set-mark-command)


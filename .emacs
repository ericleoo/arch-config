
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;load path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;load 4chan
;(load-library "q4.el")
;(load-library "mu4e-alert.el")

;basic indentation settings
(setq default-tab-width 4)
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)

;emacs GUI debloater settings
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;Hide splash screen
(setq inhibit-startup-message t
inhibit-startup-echo-area-message t)

;Inconsolata font                                        ;
(set-frame-font "Inconsolata Bold 12" nil t)

;Ido mode
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;Backups
(setq vc-make-backup-files t)

(setq version-control t ;; Use version numbers for backups
        kept-new-versions 10 ;; Number of newest versions to keep.
        kept-old-versions 0 ;; Number of oldest versions to keep.
        delete-old-versions t ;; Don't ask to delete excess backup versions.
        backup-by-copying t) ;; Copy all files, don't rename them.

(setq backup-directory-alist '(("" . "~/.emacs.d/backup/per-save")))

(defun force-backup-of-buffer ()
  ;; Make a special "per session" backup at the first save of each
  ;; emacs session.
  (when (not buffer-backed-up)
    ;; Override the default parameters for per-session backups.
    (let ((backup-directory-alist '(("" . "~/.emacs.d/backup/per-session")))
          (kept-new-versions 3))
      (backup-buffer)))
  (let ((buffer-backed-up nil))
    (backup-buffer)))

(add-hook 'before-save-hook  'force-backup-of-buffer)

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (use-package mu4e-alert ## latex-preview-pane auctex)))
 '(send-mail-function (quote smtpmail-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;(latex-preview-pane-enable)
;(setq-default TeX-engine 'xetex)

;; set XeTeX mode in TeX/LaTeX
;(add-hook 'LaTeX-mode-hook 
;          (lambda()
;             (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
;             (setq TeX-command-default "XeLaTeX")
;             (setq TeX-save-query nil)
;             (setq TeX-show-compilation t)))


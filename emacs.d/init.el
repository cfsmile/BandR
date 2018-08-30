;;; package --- Summary

;;; Commentary:

(setq inhibit-startup-message t)
(require 'package)
(setq package-enable-at-startup nil)

;; Set resources mirrors in China
(add-to-list 'package-archives
	     '("melpa" . "http://elpa.emacs-china.org/melpa/"))

(add-to-list 'package-archives
             '("gnu" . "http://elpa.emacs-china.org/gnu/"))

(add-to-list 'package-archives
             '("org" . "http://elpa.emacs-china.org/org/"))

(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; code:

;; === append load-path===
;; (setq load-path
;;       (append load-path
;;               ( "/home/fred/.emacs.d/orgfiles" )))

;; (setq load-path
;;       (cons "~/.emacs.d/orgfiles" load-path))

;;=====Load org init file=====

(org-babel-load-file (expand-file-name "~/.emacs.d/orgfiles/myinit.org"))

;;  (org-babel-load-file (expand-file-name "myinit"))
;;=====Load 'Writing GNU Emacs Extesions' configuration file=====
;; (org-babel-load-file (expand-file-name "~/.emacs.d/orgfiles/wgee.org"))


(provide 'init)
;;; init.el ends here

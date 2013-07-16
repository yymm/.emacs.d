;;
;; init.el
;;

;; Language
(set-language-environment 'Japanese)

;; Coding system.
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; theme
(add-to-list 'custom-theme-load-path (expand-file-name (concat user-emacs-directory "themes")))
(load-theme 'apribase t)

;;
;; Basic Setting
;;

;; no menu
(menu-bar-mode 0)

;; show paren match
(show-paren-mode t)

;; linum
(global-linum-mode t)
(setq linum-format "%d ")

;; highlight cursor line
(global-hl-line-mode)

;; no wrap
(set-default 'truncate-lines t)

;; no backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;; no background for rst
(setq frame-background-mode 'dark)

;; use clipboard on Mac
(defun copy-from-osx ()
 (shell-command-to-string "pbpaste"))
(defun paste-to-osx (text &optional push)
 (let ((process-connection-type nil))
     (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
       (process-send-string proc text)
       (process-send-eof proc))))
(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

;;
;; Package Manegement
;;

;; package.el add
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; define el-get repository
(setq el-get-sources
      '(
        (:name evil-plugins
               :type github
               :pkgname "tarao/evil-plugins")
        (:name mode-line-color
               :type http
               :url "https://raw.github.com/tarao/elisp/master/mode-line-color.el")
        (:name end-mark
               :type http
               :url "https://raw.github.com/tarao/elisp/master/end-mark.el")
       ))

;; el-get basic setting
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(el-get 'sync)

;; auto install package.el
(require 'cl)
(defvar installing-package-list
  '(
    ;; package list
    evil
    evil-leader
    evil-numbers
    evil-nerd-commenter
    powerline
    ))
(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))

;; auto install el-get.el
(defvar my/el-get-packages
  '(
    evil-plugins
    mode-line-color
    end-mark
    evil-elscreen
    evil-surround
    )
  "A list of packages to install from el-get at launch.")

(el-get 'sync my/el-get-packages)

;;
;; Plugin
;;

;; usable evil
(setq evil-cross-lines t
      evil-search-module 'evil-search
      evil-ex-search-vim-style-regexp t)
(require 'evil)
(evil-mode 1)

;; evil-mode-line
(require 'evil-mode-line)

;; end-mark
(add-to-list 'load-path user-emacs-directory)
(require 'end-mark)
(global-end-mark-mode)

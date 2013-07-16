((apel status "installed" recipe
       (:name apel :website "http://www.kanji.zinbun.kyoto-u.ac.jp/~tomo/elisp/APEL/" :description "APEL (A Portable Emacs Library) is a library to support to write portable Emacs Lisp programs." :type github :pkgname "wanderlust/apel" :build
	      (mapcar
	       (lambda
		 (target)
		 (list el-get-emacs
		       (split-string "-batch -q -no-site-file -l APEL-MK -f")
		       target "prefix" "site-lisp" "site-lisp"))
	       '("compile-apel" "install-apel"))
	      :load-path
	      ("site-lisp/apel" "site-lisp/emu")))
 (auto-complete status "installed" recipe
		(:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
		       (popup fuzzy)))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :info "." :load "el-get.el"))
 (elscreen status "installed" recipe
	   (:name elscreen :description "Screen Manager for Emacsen" :type http-tar :depends apel :options
		  ("xzf")
		  :url "ftp://210.155.141.202/pub/morishima.net/naoto/ElScreen/elscreen-1.4.6.tar.gz"))
 (end-mark status "installed" recipe
	   (:name end-mark :type http :url "https://raw.github.com/tarao/elisp/master/end-mark.el"))
 (evil status "installed" recipe
       (:name evil :website "http://gitorious.org/evil/pages/Home" :description "Evil is an extensible vi layer for Emacs. It\n       emulates the main features of Vim, and provides facilities\n       for writing custom extensions." :type git :url "git://gitorious.org/evil/evil.git" :features evil :depends undo-tree :build
	      (("make" "all" "info"))
	      :info "doc"))
 (evil-elscreen status "installed" recipe
		(:name evil-elscreen :auto-generated t :type emacswiki :description "evil wrpaaer to use elscreen as tab" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/evil-elscreen.el"))
 (evil-plugins status "installed" recipe
	       (:name evil-plugins :type github :pkgname "tarao/evil-plugins"))
 (evil-surround status "installed" recipe
		(:name evil-surround :website "http://github.com/timcharper/evil-surround" :description "Emulate Tim Pope's surround.vim in evil, the extensible vim\n       emulation layer for emacs" :type github :pkgname "timcharper/evil-surround" :features surround :post-init
		       (global-surround-mode 1)
		       :depends evil))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (moccur-edit status "installed" recipe
	      (:name moccur-edit :auto-generated t :type emacswiki :description "apply replaces to multiple files" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/moccur-edit.el"))
 (mode-line-color status "installed" recipe
		  (:name mode-line-color :type http :url "https://raw.github.com/tarao/elisp/master/mode-line-color.el"))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "auto-complete/popup-el"))
 (quickrun status "installed" recipe
	   (:name quickrun :description "Run commands quickly" :website "https://github.com/syohex/emacs-quickrun" :type github :pkgname "syohex/emacs-quickrun" :features "quickrun"))
 (undo-tree status "installed" recipe
	    (:name undo-tree :description "Treat undo history as a tree" :type git :url "http://www.dr-qubit.org/git/undo-tree.git" :prepare
		   (progn
		     (autoload 'undo-tree-mode "undo-tree.el" "Undo tree mode; see undo-tree.el for details" t)
		     (autoload 'global-undo-tree-mode "undo-tree.el" "Global undo tree mode" t)))))

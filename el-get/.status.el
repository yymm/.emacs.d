((el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :features el-get :info "." :load "el-get.el"))
 (emacs-powerline status "removed" recipe nil)
 (end-mark status "installed" recipe
	   (:name end-mark :type http :url "https://raw.github.com/tarao/elisp/master/end-mark.el"))
 (evil status "installed" recipe
       (:name evil :website "http://gitorious.org/evil/pages/Home" :description "Evil is an extensible vi layer for Emacs. It\n       emulates the main features of Vim, and provides facilities\n       for writing custom extensions." :type git :url "https://git.gitorious.org/evil/evil.git" :features evil :depends undo-tree))
 (evil-elscreen status "installed" recipe
		(:name evil-elscreen :auto-generated t :type emacswiki :description "evil wrpaaer to use elscreen as tab" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/evil-elscreen.el"))
 (evil-plugins status "installed" recipe
	       (:name evil-plugins :type github :pkgname "tarao/evil-plugins"))
 (evil-surround status "installed" recipe
		(:name evil-surround :website "http://github.com/timcharper/evil-surround" :description "Emulate Tim Pope's surround.vim in evil, the extensible vim\n       emulation layer for emacs" :type github :pkgname "timcharper/evil-surround" :features surround :post-init
		       (global-surround-mode 1)
		       :depends evil))
 (mode-line-color status "installed" recipe
		  (:name mode-line-color :type http :url "https://raw.github.com/tarao/elisp/master/mode-line-color.el"))
 (undo-tree status "installed" recipe
	    (:name undo-tree :description "Treat undo history as a tree" :type git :url "http://www.dr-qubit.org/git/undo-tree.git" :prepare
		   (progn
		     (autoload 'undo-tree-mode "undo-tree.el" "Undo tree mode; see undo-tree.el for details" t)
		     (autoload 'global-undo-tree-mode "undo-tree.el" "Global undo tree mode" t)))))

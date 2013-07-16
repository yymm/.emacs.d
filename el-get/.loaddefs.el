;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-all el-get-version) "el-get/el-get"
;;;;;;  "el-get/el-get.el" (20962 41346 0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (20962 41346 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (global-end-mark-mode end-mark-mode) "end-mark/end-mark"
;;;;;;  "end-mark/end-mark.el" (20962 51904 0 0))
;;; Generated autoloads from end-mark/end-mark.el

(autoload 'end-mark-mode "end-mark/end-mark" "\
Toggle display of mark at the end of buffer.

\(fn &optional ARG)" t nil)

(defvar global-end-mark-mode nil "\
Non-nil if Global-End-Mark mode is enabled.
See the command `global-end-mark-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-end-mark-mode'.")

(custom-autoload 'global-end-mark-mode "end-mark/end-mark" nil)

(autoload 'global-end-mark-mode "end-mark/end-mark" "\
Toggle End-Mark mode in all buffers.
With prefix ARG, enable Global-End-Mark mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

End-Mark mode is enabled in all buffers where
`end-mark-install' would do it.
See `end-mark-mode' for more information on End-Mark mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (global-evil-operator-comment-mode evil-operator-comment-mode)
;;;;;;  "evil-plugins/evil-operator-comment" "evil-plugins/evil-operator-comment.el"
;;;;;;  (20962 43026 0 0))
;;; Generated autoloads from evil-plugins/evil-operator-comment.el

(autoload 'evil-operator-comment-mode "evil-plugins/evil-operator-comment" "\
Buffer local minor mode of comment/uncomment operator for Evil.

\(fn &optional ARG)" t nil)

(defvar global-evil-operator-comment-mode nil "\
Non-nil if Global-Evil-Operator-Comment mode is enabled.
See the command `global-evil-operator-comment-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-operator-comment-mode'.")

(custom-autoload 'global-evil-operator-comment-mode "evil-plugins/evil-operator-comment" nil)

(autoload 'global-evil-operator-comment-mode "evil-plugins/evil-operator-comment" "\
Toggle Evil-Operator-Comment mode in all buffers.
With prefix ARG, enable Global-Evil-Operator-Comment mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Operator-Comment mode is enabled in all buffers where
`evil-operator-comment-mode-install' would do it.
See `evil-operator-comment-mode' for more information on Evil-Operator-Comment mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (global-evil-operator-moccur-mode evil-operator-moccur-mode)
;;;;;;  "evil-plugins/evil-operator-moccur" "evil-plugins/evil-operator-moccur.el"
;;;;;;  (20962 43026 0 0))
;;; Generated autoloads from evil-plugins/evil-operator-moccur.el

(autoload 'evil-operator-moccur-mode "evil-plugins/evil-operator-moccur" "\
Buffer local minor mode of moccur operator for Evil.

\(fn &optional ARG)" t nil)

(defvar global-evil-operator-moccur-mode nil "\
Non-nil if Global-Evil-Operator-Moccur mode is enabled.
See the command `global-evil-operator-moccur-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-operator-moccur-mode'.")

(custom-autoload 'global-evil-operator-moccur-mode "evil-plugins/evil-operator-moccur" nil)

(autoload 'global-evil-operator-moccur-mode "evil-plugins/evil-operator-moccur" "\
Toggle Evil-Operator-Moccur mode in all buffers.
With prefix ARG, enable Global-Evil-Operator-Moccur mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Operator-Moccur mode is enabled in all buffers where
`evil-operator-moccur-mode-install' would do it.
See `evil-operator-moccur-mode' for more information on Evil-Operator-Moccur mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (global-surround-mode turn-off-surround-mode turn-on-surround-mode
;;;;;;  surround-mode surround-change surround-delete) "evil-surround/surround"
;;;;;;  "evil-surround/surround.el" (20962 52485 0 0))
;;; Generated autoloads from evil-surround/surround.el

(autoload 'surround-delete "evil-surround/surround" "\
Delete the surrounding delimiters represented by CHAR.
Alternatively, the text to delete can be represented with
the overlays OUTER and INNER, where OUTER includes the delimiters
and INNER excludes them. The intersection (i.e., difference)
between these overlays is what is deleted.

\(fn CHAR &optional OUTER INNER)" t nil)

(autoload 'surround-change "evil-surround/surround" "\
Change the surrounding delimiters represented by CHAR.
Alternatively, the text to delete can be represented with the
overlays OUTER and INNER, which are passed to `surround-delete'.

\(fn CHAR &optional OUTER INNER)" t nil)

(autoload 'surround-mode "evil-surround/surround" "\
Buffer-local minor mode to emulate surround.vim.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-surround-mode "evil-surround/surround" "\
Enable surround-mode in the current buffer.

\(fn)" nil nil)

(autoload 'turn-off-surround-mode "evil-surround/surround" "\
Disable surround-mode in the current buffer.

\(fn)" nil nil)

(defvar global-surround-mode nil "\
Non-nil if Global-Surround mode is enabled.
See the command `global-surround-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-surround-mode'.")

(custom-autoload 'global-surround-mode "evil-surround/surround" nil)

(autoload 'global-surround-mode "evil-surround/surround" "\
Toggle Surround mode in all buffers.
With prefix ARG, enable Global-Surround mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Surround mode is enabled in all buffers where
`turn-on-surround-mode' would do it.
See `surround-mode' for more information on Surround mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "evil/evil-core" "evil/evil-core.el" (20962
;;;;;;  52477 0 0))
;;; Generated autoloads from evil/evil-core.el
 (autoload 'evil-mode "evil" "Toggle evil in all buffers" t)

;;;***

;;;### (autoloads (mode-line-color-mode) "mode-line-color/mode-line-color"
;;;;;;  "mode-line-color/mode-line-color.el" (20962 45660 0 0))
;;; Generated autoloads from mode-line-color/mode-line-color.el

(defvar mode-line-color-mode nil "\
Non-nil if Mode-Line-Color mode is enabled.
See the command `mode-line-color-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `mode-line-color-mode'.")

(custom-autoload 'mode-line-color-mode "mode-line-color/mode-line-color" nil)

(autoload 'mode-line-color-mode "mode-line-color/mode-line-color" "\
Set color of mode line.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (global-undo-tree-mode undo-tree-mode) "undo-tree/undo-tree"
;;;;;;  "undo-tree/undo-tree.el" (20962 52447 0 0))
;;; Generated autoloads from undo-tree/undo-tree.el

(autoload 'undo-tree-mode "undo-tree/undo-tree" "\
Toggle undo-tree mode.
With no argument, this command toggles the mode.
A positive prefix argument turns the mode on.
A negative prefix argument turns it off.

Undo-tree-mode replaces Emacs' standard undo feature with a more
powerful yet easier to use version, that treats the undo history
as what it is: a tree.

The following keys are available in `undo-tree-mode':

  \\{undo-tree-map}

Within the undo-tree visualizer, the following keys are available:

  \\{undo-tree-visualizer-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-undo-tree-mode nil "\
Non-nil if Global-Undo-Tree mode is enabled.
See the command `global-undo-tree-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-undo-tree-mode'.")

(custom-autoload 'global-undo-tree-mode "undo-tree/undo-tree" nil)

(autoload 'global-undo-tree-mode "undo-tree/undo-tree" "\
Toggle Undo-Tree mode in all buffers.
With prefix ARG, enable Global-Undo-Tree mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Undo-Tree mode is enabled in all buffers where
`turn-on-undo-tree-mode' would do it.
See `undo-tree-mode' for more information on Undo-Tree mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("el-get/el-get-autoloads.el" "el-get/el-get-build.el"
;;;;;;  "el-get/el-get-byte-compile.el" "el-get/el-get-core.el" "el-get/el-get-custom.el"
;;;;;;  "el-get/el-get-dependencies.el" "el-get/el-get-install.el"
;;;;;;  "el-get/el-get-methods.el" "el-get/el-get-notify.el" "el-get/el-get-recipes.el"
;;;;;;  "el-get/el-get-status.el" "emacs-powerline/powerline.el"
;;;;;;  "evil-elscreen/evil-elscreen.el" "evil-plugins/evil-ex-registers.el"
;;;;;;  "evil-plugins/evil-little-word.el" "evil-plugins/evil-mode-line.el"
;;;;;;  "evil-plugins/evil-relative-linum.el" "evil-plugins/evil-textobj-between.el"
;;;;;;  "evil-plugins/hexl-evil-patch.el" "evil/evil-commands.el"
;;;;;;  "evil/evil-common.el" "evil/evil-digraphs.el" "evil/evil-ex.el"
;;;;;;  "evil/evil-integration.el" "evil/evil-macros.el" "evil/evil-maps.el"
;;;;;;  "evil/evil-pkg.el" "evil/evil-repeat.el" "evil/evil-search.el"
;;;;;;  "evil/evil-states.el" "evil/evil-tests.el" "evil/evil-types.el"
;;;;;;  "evil/evil-vars.el" "evil/evil.el") (20963 24928 881038 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here

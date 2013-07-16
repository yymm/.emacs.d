;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (vassoc set-modified-alist modify-alist remove-alist
;;;;;;  set-alist del-alist put-alist) "apel/site-lisp/apel/alist"
;;;;;;  "apel/site-lisp/apel/alist.el" (20964 55093))
;;; Generated autoloads from apel/site-lisp/apel/alist.el

(autoload 'put-alist "apel/site-lisp/apel/alist" "\
Set cdr of an element (KEY . ...) in ALIST to VALUE and return ALIST.
If there is no such element, create a new pair (KEY . VALUE) and
return a new alist whose car is the new pair and cdr is ALIST.

\(fn KEY VALUE ALIST)" nil nil)

(autoload 'del-alist "apel/site-lisp/apel/alist" "\
Delete an element whose car equals KEY from ALIST.
Return the modified ALIST.

\(fn KEY ALIST)" nil nil)

(autoload 'set-alist "apel/site-lisp/apel/alist" "\
Set cdr of an element (KEY . ...) in the alist bound to SYMBOL to VALUE.

\(fn SYMBOL KEY VALUE)" nil nil)

(autoload 'remove-alist "apel/site-lisp/apel/alist" "\
Delete an element whose car equals KEY from the alist bound to SYMBOL.

\(fn SYMBOL KEY)" nil nil)

(autoload 'modify-alist "apel/site-lisp/apel/alist" "\
Store elements in the alist MODIFIER in the alist DEFAULT.
Return the modified alist.

\(fn MODIFIER DEFAULT)" nil nil)

(autoload 'set-modified-alist "apel/site-lisp/apel/alist" "\
Store elements in the alist MODIFIER in an alist bound to SYMBOL.
If SYMBOL is not bound, set it to nil at first.

\(fn SYMBOL MODIFIER)" nil nil)

(autoload 'vassoc "apel/site-lisp/apel/alist" "\
Search AVLIST for an element whose first element equals KEY.
AVLIST is a list of vectors.
See also `assoc'.

\(fn KEY AVLIST)" nil nil)

;;;***

;;;### (autoloads (module-installed-p exec-installed-p file-installed-p
;;;;;;  get-latest-path add-latest-path add-path) "apel/site-lisp/apel/path-util"
;;;;;;  "apel/site-lisp/apel/path-util.el" (20964 55094))
;;; Generated autoloads from apel/site-lisp/apel/path-util.el

(autoload 'add-path "apel/site-lisp/apel/path-util" "\
Add PATH to `load-path' if it exists under `default-load-path'
directories and it does not exist in `load-path'.

You can use following PATH styles:
	load-path relative: \"PATH/\"
			(it is searched from `default-load-path')
	home directory relative: \"~/PATH/\" \"~USER/PATH/\"
	absolute path: \"/HOO/BAR/BAZ/\"

You can specify following OPTIONS:
	'all-paths	search from `load-path'
			instead of `default-load-path'
	'append		add PATH to the last of `load-path'

\(fn PATH &rest OPTIONS)" nil nil)

(autoload 'add-latest-path "apel/site-lisp/apel/path-util" "\
Add latest path matched by PATTERN to `load-path'
if it exists under `default-load-path' directories
and it does not exist in `load-path'.

If optional argument ALL-PATHS is specified, it is searched from all
of load-path instead of default-load-path.

\(fn PATTERN &optional ALL-PATHS)" nil nil)

(autoload 'get-latest-path "apel/site-lisp/apel/path-util" "\
Return latest directory in default-load-path
which is matched to regexp PATTERN.
If optional argument ALL-PATHS is specified,
it is searched from all of load-path instead of default-load-path.

\(fn PATTERN &optional ALL-PATHS)" nil nil)

(autoload 'file-installed-p "apel/site-lisp/apel/path-util" "\
Return absolute-path of FILE if FILE exists in PATHS.
If PATHS is omitted, `load-path' is used.

\(fn FILE &optional PATHS)" nil nil)

(defvar exec-suffix-list '("") "\
*List of suffixes for executable.")

(autoload 'exec-installed-p "apel/site-lisp/apel/path-util" "\
Return absolute-path of FILE if FILE exists in PATHS.
If PATHS is omitted, `exec-path' is used.
If suffixes is omitted, `exec-suffix-list' is used.

\(fn FILE &optional PATHS SUFFIXES)" nil nil)

(autoload 'module-installed-p "apel/site-lisp/apel/path-util" "\
Return t if module is provided or exists in PATHS.
If PATHS is omitted, `load-path' is used.

\(fn MODULE &optional PATHS)" nil nil)

;;;***

;;;### (autoloads (richtext-decode richtext-encode) "apel/site-lisp/emu/richtext"
;;;;;;  "apel/site-lisp/emu/richtext.el" (20964 55094))
;;; Generated autoloads from apel/site-lisp/emu/richtext.el

(autoload 'richtext-encode "apel/site-lisp/emu/richtext" "\


\(fn FROM TO)" nil nil)

(autoload 'richtext-decode "apel/site-lisp/emu/richtext" "\


\(fn FROM TO)" nil nil)

;;;***

;;;### (autoloads (auto-complete) "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (20964 54664))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-all el-get-version) "el-get/el-get"
;;;;;;  "el-get/el-get.el" (20964 44456))
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
;;;;;;  "el-get/el-get-list-packages.el" (20964 44455))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (global-end-mark-mode end-mark-mode) "end-mark/end-mark"
;;;;;;  "end-mark/end-mark.el" (20964 44872))
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
;;;;;;  (20964 44862))
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
;;;;;;  (20964 44862))
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
;;;;;;  "evil-surround/surround.el" (20964 45015))
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

;;;### (autoloads nil "evil/evil-core" "evil/evil-core.el" (20964
;;;;;;  44975))
;;; Generated autoloads from evil/evil-core.el
 (autoload 'evil-mode "evil" "Toggle evil in all buffers" t)

;;;***

;;;### (autoloads (mode-line-color-mode) "mode-line-color/mode-line-color"
;;;;;;  "mode-line-color/mode-line-color.el" (20964 44869))
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

;;;### (autoloads (helm-quickrun anything-quickrun quickrun-shell
;;;;;;  quickrun-compile-only quickrun-replace-region quickrun-region
;;;;;;  quickrun-with-arg quickrun quickrun-add-command quickrun-set-default)
;;;;;;  "quickrun/quickrun" "quickrun/quickrun.el" (20964 55075))
;;; Generated autoloads from quickrun/quickrun.el

(autoload 'quickrun-set-default "quickrun/quickrun" "\
Set `key' as default key in programing language `lang'

\(fn LANG KEY)" nil nil)

(autoload 'quickrun-add-command "quickrun/quickrun" "\


\(fn KEY ALIST &key DEFAULT MODE OVERRIDE)" nil nil)

(autoload 'quickrun "quickrun/quickrun" "\
Run commands quickly for current buffer
   With universal prefix argument(C-u), select command-key,
   With double prefix argument(C-u C-u), run in compile-only-mode

\(fn &rest PLIST)" t nil)

(autoload 'quickrun-with-arg "quickrun/quickrun" "\
Run commands quickly for current buffer with arguments

\(fn ARG)" t nil)

(autoload 'quickrun-region "quickrun/quickrun" "\
Run commands with specified region

\(fn START END)" t nil)

(autoload 'quickrun-replace-region "quickrun/quickrun" "\
Run commands with specified region and replace

\(fn START END)" t nil)

(autoload 'quickrun-compile-only "quickrun/quickrun" "\
Exec only compilation

\(fn)" t nil)

(autoload 'quickrun-shell "quickrun/quickrun" "\
Run commands in shell for interactive programs

\(fn)" t nil)

(autoload 'anything-quickrun "quickrun/quickrun" "\


\(fn)" t nil)

(autoload 'helm-quickrun "quickrun/quickrun" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (global-undo-tree-mode undo-tree-mode) "undo-tree/undo-tree"
;;;;;;  "undo-tree/undo-tree.el" (20964 44890))
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

;;;### (autoloads nil nil ("apel/site-lisp/apel/calist.el" "apel/site-lisp/apel/filename.el"
;;;;;;  "apel/site-lisp/apel/install.el" "apel/site-lisp/emu/apel-ver.el"
;;;;;;  "apel/site-lisp/emu/broken.el" "apel/site-lisp/emu/emu.el"
;;;;;;  "apel/site-lisp/emu/inv-23.el" "apel/site-lisp/emu/invisible.el"
;;;;;;  "apel/site-lisp/emu/mcharset.el" "apel/site-lisp/emu/mcs-20.el"
;;;;;;  "apel/site-lisp/emu/mcs-e20.el" "apel/site-lisp/emu/mule-caesar.el"
;;;;;;  "apel/site-lisp/emu/pccl-20.el" "apel/site-lisp/emu/pccl.el"
;;;;;;  "apel/site-lisp/emu/pces-20.el" "apel/site-lisp/emu/pces-e20.el"
;;;;;;  "apel/site-lisp/emu/pces.el" "apel/site-lisp/emu/pcustom.el"
;;;;;;  "apel/site-lisp/emu/poe.el" "apel/site-lisp/emu/poem-e20.el"
;;;;;;  "apel/site-lisp/emu/poem-e20_3.el" "apel/site-lisp/emu/poem.el"
;;;;;;  "apel/site-lisp/emu/product.el" "apel/site-lisp/emu/pym.el"
;;;;;;  "apel/site-lisp/emu/static.el" "auto-complete/auto-complete-config.el"
;;;;;;  "auto-complete/auto-complete-pkg.el" "el-get/el-get-autoloads.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "elscreen/elscreen.el"
;;;;;;  "evil-elscreen/evil-elscreen.el" "evil-plugins/evil-ex-registers.el"
;;;;;;  "evil-plugins/evil-little-word.el" "evil-plugins/evil-mode-line.el"
;;;;;;  "evil-plugins/evil-relative-linum.el" "evil-plugins/evil-textobj-between.el"
;;;;;;  "evil-plugins/hexl-evil-patch.el" "evil/evil-commands.el"
;;;;;;  "evil/evil-common.el" "evil/evil-digraphs.el" "evil/evil-ex.el"
;;;;;;  "evil/evil-integration.el" "evil/evil-macros.el" "evil/evil-maps.el"
;;;;;;  "evil/evil-pkg.el" "evil/evil-repeat.el" "evil/evil-search.el"
;;;;;;  "evil/evil-states.el" "evil/evil-tests.el" "evil/evil-types.el"
;;;;;;  "evil/evil-vars.el" "evil/evil.el" "fuzzy/fuzzy.el" "moccur-edit/moccur-edit.el"
;;;;;;  "popup/popup.el" "quickrun/test-quickrun.el") (20964 59855
;;;;;;  548923))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here

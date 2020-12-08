;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(vimscript
     ;; Operating System
     osx

     ;; Programming Languages
     javascript
     (python :variables
     ;;         ; python-auto-set-local-pyvenv-virtualenv 'on-visit
     ;;         ; python-enable-yapf-format-on-save nil
     ;;         ; python-shell-completion-native-enable nil
     ;;                                    ; python-sort-imports-on-save nil
              )
     emacs-lisp

     ;; File Formats
     (org :variables
          org-want-todo-bindings t
          org-enable-reveal-js-support t
          org-enable-bootstrap-support t)

     html
     yaml
     markdown
     csv

     ;; Tools
     (shell :variables
            shell-default-shell 'ansi-term
            shell-default-position 'bottom
            shell-default-term-shell "/usr/local/bin/zsh"
            shell-default-height 30)

     git
     tmux
     restclient
     deft
     spell-checking
     imenu-list
     syntax-checking
     (auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t
                      auto-completion-enable-snippets-in-popup t)
     dash

     ;; Miscellaneous
     themes-megapack
     shell-scripts
     ess
     vinegar
     evil-commentary
     colors
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(browse-at-remote nyan-mode beacon git-gutter)

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; File path pointing to emacs 27.1 executable compiled with support
   ;; for the portable dumper (this is currently the branch pdumper).
   ;; (default "emacs-27.0.50")
   dotspacemacs-emacs-pdumper-executable-file "emacs-27.0.50"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
   ;; (default spacemacs.pdmp)
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         ;; dark themes
                         reverse
                         material
                         wheatgrass
                         ;; light themes
                         soft-stone
                         professional
                         leuven
                         )

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 18
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 10

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, pressing
   ;; `p' several times cycles through the elements in the `kill-ring'.
   ;; (default nil)
   dotspacemacs-enable-paste-transient-state t

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.01

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar nil

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native t

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 80

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 80

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers 'relative

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server t

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%t %f"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs t))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  ;(add-to-list 'configuration-layer-elpa-archives '("melpa-stable" . "stable.melpa.org/packages/"))
  (add-to-list 'package-pinned-packages '(ensime . "melpa-stable"))
  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  (define-key evil-motion-state-map (kbd "gt") 'persp-next)
  (define-key evil-motion-state-map (kbd "gT") 'persp-prev)
  (beacon-mode 1)
  ;; C-M-g - find symbol definition
  (dumb-jump-mode)
  ;; Select the function evil complete should use for C-n
  (setq evil-complete-next-func 'hippie-expand)
  ;; So that I can revert buffers easily using S-u.
  (setq ns-right-option-modifier 'super)
  ;; Don't let me know that abbreviations are being saved.
  (setq save-abbrevs 'silently)
  ;; Spacemacs toggles
  (spacemacs/toggle-transparency)
  (spacemacs/toggle-auto-completion-on)
  (spacemacs/toggle-automatic-symbol-highlight-on)
  (spacemacs/toggle-global-whitespace-cleanup-on)
  (spacemacs/toggle-hungry-delete-on)
  (spacemacs/toggle-maximize-frame-on)
  (spacemacs/toggle-truncate-lines-on)
  (spacemacs/toggle-rainbow-identifier-off)
  (spacemacs/toggle-color-identifiers-mode-off)
  (spacemacs/toggle-highlight-current-line-globally-off)
  (spacemacs/toggle-whitespace-globally-off)
  (spacemacs/toggle-yasnippet-on)
  (spacemacs/toggle-truncate-lines-on)
  ;; Start ansi-term in emacs mode which is more natural for interacting with a
  ;; terminal. Use C-x o to go to other windows.
  (evil-set-initial-state 'term-mode 'emacs)

  ; https://www.reddit.com/r/spacemacs/comments/8ifrzn/how_to_get_mypy_working/
  ; I believe I ran pip install flake8-mypy, turned on pyflakes in flycheck, and
  ; I was all set.

  ; This makes sure that pylint and flake8 both run.
  ;; (add-hook 'python-mode-hook
  ;;           (lambda ()
  ;;             (flycheck-add-next-checker 'python-flake8 'python-pylint t)))

  (global-set-key (kbd "<f5>")
                  (lambda ()
                    (interactive)
                    (find-file "~/org/brain.org")))

  (setq org-capture-templates
        '(
          ;; Checklist
          ("c" "Checklist" entry (file "~/org/brain.org")
           (file "~/org/templates/checklist.template"))
          ;; Idea
          ("i" "Idea" entry (file "~/org/brain.org")
           (file "~/org/templates/idea.template"))
          ;; Link
          ("l" "Link" entry (file "~/org/brain.org")
           (file "~/org/templates/link.template"))
          ;; Mistake
          ("m" "Mistake" entry (file "~/org/brain.org")
           (file "~/org/templates/mistake.template"))
          ;; Project
          ("p" "Project" entry (file "~/org/brain.org")
           (file "~/org/templates/project.template"))
          ;; Risk
          ("r" "Risk" entry (file "~/org/brain.org")
           (file "~/org/templates/risk.template"))
          ;; Source code
          ("s" "Source code" entry (file "~/org/brain.org")
           (file "~/org/templates/source_code.template"))
          ;; Todo
          ("t" "Todo" entry (file "~/org/brain.org")
           (file "~/org/templates/todo.template"))))

  (setq org-refile-targets '((nil :maxlevel . 2)
                             (org-agenda-files :maxlevel . 2)))

  (setq org-outline-path-complete-in-steps nil)
  (setq org-refile-use-outline-path t)

  ;; Evil Mode
  (add-hook 'org-capture-mode-hook 'evil-insert-state)

  ;; CIDER
  ;; (add-hook 'cider-repl-mode-hook #'cider-company-enable-fuzzy-completion)
  ;; (add-hook 'cider-mode-hook #'cider-company-enable-fuzzy-completion)

  ;; Autocomplete
  (global-auto-complete-mode)
  ;;(global-company-mode t)
  ;;(global-set-key (kbd "TAB") #'company-indent-or-complete-common)

  ;; GUI
  (setq dotspacemacs-colorize-cursor-according-to-state nil)
  (define-key global-map (kbd "C-+") 'text-scale-increase)
  (define-key global-map (kbd "C--") 'text-scale-decrease)
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  (add-to-list 'default-frame-alist '(ns-appearance . dark))

  ;; Disable smartparens
  (eval-after-load 'smartparens
    '(progn
       (sp-pair "(" nil :actions :rem)
       (sp-pair "[" nil :actions :rem)
       (sp-pair "'" nil :actions :rem)
       (sp-pair "\"" nil :actions :rem)))

  (global-git-commit-mode t) ;; Git
  ;; Start Magit commit in insert mode.
  (add-hook 'git-commit-mode-hook 'evil-insert-state)
  ;; Python
  ;; (add-hook 'python-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  ;; Org Mode
  (add-hook 'org-insert-heading-hook 'evil-insert-state)
  ;; TRAMP
  (setq tramp-default-method "ssh")
  ;; Python
  (setq python-python-command "/Users/STEWTJ3/.pyenv/shims/python")
  ;; Unfiled
  (setq js-indent-level 2)
  (fset 'evil-visual-update-x-selection 'ignore)
  ;; Fine-grained undo.  Without this, hitting undo undoes too much.
  (setq evil-want-fine-undo t)
  ; Resize font
  (setq spacemacs-space-doc-modificators
        '(center-buffer-mode
          org-indent-mode
          view-mode
          hide-line-numbers
          alternative-emphasis
          alternative-tags-look
          link-protocol
          org-block-line-face-remap
          org-kbd-face-remap
          resize-inline-images))
  (setq deft-directory "~/org")
  (spacemacs/toggle-which-key-off))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-faces-vector
;;    [default default default italic underline success warning error])
;;  '(column-number-mode t)
;;  '(evil-want-Y-yank-to-eol nil)
;;  '(flycheck-flake8rc ".flake8")
;;  '(large-file-warning-threshold 100000000)
;;  '(menu-bar-mode nil)
;;  '(org-agenda-files (quote ("~/org/work.org")))
;;  '(org-agenda-skip-scheduled-if-done t)
;;  '(org-download-screenshot-method "screencapture -i %s")
;;  '(package-selected-packages
;;    (quote
;;     (ox-twbs ox-reveal imenu-list vimrc-mode ranger plantuml-mode dactyl-mode company-quickhelp sesman vagrant-tramp vagrant jinja2-mode company-ansible ansible-doc ansible toml-mode racer flycheck-rust cargo rust-mode focus writeroom-mode rainbow-mode rainbow-identifiers color-identifiers-mode zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme org-mime ghub nix-mode helm-nixos-options company-nixos-options nixos-options xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl counsel-dash psci purescript-mode psc-ide helm-gtags ggtags evil-commentary company-tern dash-functional yaml-mode json-mode web-beautify livid-mode json-snatcher json-reformat js2-refactor js-doc tern coffee-mode org-category-capture request-deferred flycheck-mypy helm-company helm-c-yasnippet fuzzy csv-mode company-web web-completion-data company-statistics company-shell company-restclient know-your-http-well company-emacs-eclim company-cabal company-c-headers company-anaconda clojure-snippets auto-yasnippet ac-ispell fringe-helper clj-refactor inflections edn multiple-cursors paredit peg cider-eval-sexp-fu cider seq queue clojure-mode ein skewer-mode deferred auto-complete websocket js2-mode simple-httpd nginx-mode web-mode tagedit slim-mode scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe restclient-helm rbenv rake pug-mode ob-restclient restclient ob-http minitest less-css-mode insert-shebang helm-dash helm-css-scss haml-mode fish-mode emmet-mode eclim disaster dash-at-point cmake-mode clang-format chruby bundler inf-ruby deft helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-hoogle helm-gitignore helm-flx helm-descbinds helm-ag flyspell-correct-helm ace-jump-helm-line winum mmm-mode markdown-toc markdown-mode gh-md ess-smart-equals ess-R-object-popup ess-R-data-view ctable ess julia-mode smeargle orgit org-projectile pcache org-present org org-pomodoro alert log4e gntp org-download noflet magit-gitflow htmlize gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link flyspell-correct-ivy flyspell-correct flycheck-pos-tip pos-tip flycheck-haskell evil-magit magit magit-popup git-commit with-editor ensime sbt-mode scala-mode auto-dictionary intero flycheck hlint-refactor hindent haskell-snippets yasnippet company-ghci company-ghc ghc company haskell-mode cmm-mode yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode cython-mode anaconda-mode pythonic ws-butler window-numbering which-key wgrep volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline smex restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint ivy-hydra info+ indent-guide ido-vertical-mode hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-make helm helm-core google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump popup f s diminish define-word counsel-projectile projectile pkg-info epl counsel swiper ivy column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed dash async aggressive-indent adaptive-wrap ace-window ace-link avy quelpa package-build spacemacs-theme)))
;;  '(paradox-github-token t)
;;  '(projectile-globally-ignored-directories
;;    (quote
;;     (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "venv" ".tugboat" "fabfile")))
;;  '(projectile-switch-project-action (quote projectile-dired) t)
;;  '(projectile-tags-command
;;    "ctags -Re -f \"%s\" %s --exclude=*.json --exclude=*.css --exclude=*.js")
;;  '(psc-ide-add-import-on-completion t t)
;;  '(psc-ide-rebuild-on-save nil t)
;;  '(tool-bar-mode nil)
;;  '(tramp-syntax (quote default) nil (tramp))
;;  '(which-key-idle-delay 0.01)
;;  '(which-key-max-description-length 32)
;;  '(which-key-mode t)
;;  '(which-key-sort-order (quote which-key-key-order-alpha)))

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(column-number-mode t)
 '(custom-safe-themes
   '("04232a0bfc50eac64c12471607090ecac9d7fd2d79e388f8543d1c5439ed81f5" default))
 '(dash-docs-browser-func 'eww)
 '(evil-want-Y-yank-to-eol nil)
 '(exec-path
   '("/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/usr/local/munki" "/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_10" "/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_10" "/Users/build/workspace/Emacs-Multi-Build/label/yosemite/emacs-source/nextstep/Emacs.app/Contents/MacOS/libexec" "/usr/local/go/bin" "/Users/STEWTJ3/go/bin"))
 '(eyebrowse-default-workspace-slot 0)
 '(eyebrowse-mode t)
 '(eyebrowse-new-workspace "nil")
 '(eyebrowse-switch-back-and-forth t)
 '(eyebrowse-wrap-around t)
 '(flycheck-flake8rc ".flake8")
 '(go-command "/usr/local/go/bin/go")
 '(go-packages-function 'spacemacs/go-packages-gopkgs t)
 '(godef-command "/Users/STEWTJ3/go/bin/godef")
 '(godoc-and-godef-command "/Users/STEWTJ3/go/bin/godoc")
 '(large-file-warning-threshold 100000000)
 '(menu-bar-mode nil)
 '(org-agenda-files '("~/org/work.org"))
 '(org-agenda-skip-scheduled-if-done t)
 '(org-download-screenshot-method "screencapture -i %s")
 '(package-selected-packages
   '(counsel-gtags utop tuareg caml tide typescript-mode seeing-is-believing ruby-refactor ruby-hash-syntax rubocopfmt ocp-indent ob-elixir mvn merlin-eldoc meghanada maven-test-mode lsp-ui lsp-python-ms lsp-java dap-mode posframe lsp-treemacs bui helm-lsp lsp-mode groovy-mode groovy-imports git-gutter-fringe+ git-gutter+ flycheck-ocaml merlin flycheck-credo emojify emoji-cheat-sheet-plus dune company-emoji alchemist elixir-mode git-gutter flutter beacon nyan-mode browse-at-remote wiki-nav ox-twbs ox-reveal imenu-list vimrc-mode ranger plantuml-mode dactyl-mode company-quickhelp sesman vagrant-tramp vagrant jinja2-mode company-ansible ansible-doc ansible toml-mode racer flycheck-rust cargo rust-mode focus writeroom-mode rainbow-mode rainbow-identifiers color-identifiers-mode zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme org-mime ghub nix-mode helm-nixos-options company-nixos-options nixos-options xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl counsel-dash psci purescript-mode psc-ide helm-gtags ggtags evil-commentary company-tern dash-functional yaml-mode json-mode web-beautify livid-mode json-snatcher json-reformat js2-refactor js-doc tern coffee-mode org-category-capture request-deferred flycheck-mypy helm-company helm-c-yasnippet fuzzy csv-mode company-web web-completion-data company-statistics company-shell company-restclient know-your-http-well company-emacs-eclim company-cabal company-c-headers company-anaconda clojure-snippets auto-yasnippet ac-ispell fringe-helper clj-refactor inflections edn multiple-cursors paredit peg cider-eval-sexp-fu cider seq queue clojure-mode ein skewer-mode deferred auto-complete websocket js2-mode simple-httpd nginx-mode web-mode tagedit slim-mode scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe restclient-helm rbenv rake pug-mode ob-restclient restclient ob-http minitest less-css-mode insert-shebang helm-dash helm-css-scss haml-mode fish-mode emmet-mode eclim disaster dash-at-point cmake-mode clang-format chruby bundler inf-ruby deft helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-hoogle helm-gitignore helm-flx helm-descbinds helm-ag flyspell-correct-helm ace-jump-helm-line winum mmm-mode markdown-toc markdown-mode gh-md ess-smart-equals ess-R-object-popup ess-R-data-view ctable ess julia-mode smeargle orgit org-projectile pcache org-present org org-pomodoro alert log4e gntp org-download noflet magit-gitflow htmlize gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link flyspell-correct-ivy flyspell-correct flycheck-pos-tip pos-tip flycheck-haskell evil-magit magit magit-popup git-commit with-editor ensime sbt-mode scala-mode auto-dictionary intero flycheck hlint-refactor hindent haskell-snippets yasnippet company-ghci company-ghc ghc company haskell-mode cmm-mode yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode cython-mode anaconda-mode pythonic ws-butler window-numbering which-key wgrep volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline smex restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint ivy-hydra info+ indent-guide ido-vertical-mode hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-make helm helm-core google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump popup f s diminish define-word counsel-projectile projectile pkg-info epl counsel swiper ivy column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed dash async aggressive-indent adaptive-wrap ace-window ace-link avy quelpa package-build spacemacs-theme))
 '(paradox-github-token t)
 '(projectile-globally-ignored-directories
   '(".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "venv" ".tugboat" "fabfile"))
 '(projectile-switch-project-action 'projectile-dired)
 '(projectile-tags-command
   "ctags -Re -f \"%s\" %s --exclude=*.json --exclude=*.css --exclude=*.js")
 '(psc-ide-add-import-on-completion t t)
 '(psc-ide-rebuild-on-save nil t)
 '(ranger-override-dired 'ranger)
 '(tool-bar-mode nil)
 '(tramp-syntax 'default nil (tramp))
 '(which-key-idle-delay 0.01)
 '(which-key-max-description-length 32)
 '(which-key-mode t)
 '(which-key-sort-order 'which-key-key-order-alpha))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
)

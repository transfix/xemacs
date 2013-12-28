;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; turn on font-lock mode
;;(global-font-lock-mode t)

;; enable visual feedback on selections
(setq transient-mark-mode t)

;; Red Hat Linux default .emacs initialization file

;; Are we running XEmacs or Emacs?
(defvar running-xemacs (string-match "XEmacs\\|Lucid" emacs-version))

;; Set up the keyboard so the delete key on both the regular keyboard
;; and the keypad delete the character under the cursor and to the right
;; under X, instead of the default, backspace behavior.
(global-set-key [delete] 'delete-char)
(global-set-key [kp-delete] 'delete-char)

;; Turn on font-lock mode for Emacs
(if (not running-xemacs)
    (global-font-lock-mode t)
    (require 'font-lock) ; enable syntax highlighting in XEmacs
)

;; Visual feedback on selections
(setq-default transient-mark-mode t)

;; Always end a file with a newline
(setq require-final-newline t)

;; Stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)

;; Enable wheelmouse support by default
(cond (window-system
       (mwheel-install)
))

(setq line-number-mode t)

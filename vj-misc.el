;; Inhibit start message
(setq inhibit-startup-message t)

;; ;; Set my PATH envvar (broke with Emacs 23)
;; (setenv "PATH" (concat "/usr/local/bin:"
;;                        "/opt/local/bin:"
;;                        "/usr/texbin:"
;;                        (concat (getenv "HOME") "/bin:")
;;                        (getenv "PATH")))
;; (setq exec-path (append exec-path '("/usr/local/bin"
;;                                     "/opt/local/bin"
;;                                     "/usr/texbin:"
;;                                     (concat (getenv "HOME") "/bin"))))

;; Sane mouse wheel behaviour
(setq mouse-wheel-progressive-speed nil)

;; Automatically set execute perms on files if first line begins with '#!'
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)


;; Don't disable case-change functions
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Don't diable narrow-to-region
(put 'narrow-to-region 'disabled nil)

;; Mark-ring is navigable by typing C-u C-SPC and then repeating C-SPC forever
(setq set-mark-command-repeat-pop t)

;; Set UTF-8 environment
(setq current-language-environment "UTF-8")
(setq locale-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; Set fill column
(setq-default fill-column 78)

;; Set global commenting style
(setq comment-style 'indent)

;; Confirm killing, because of accidental kills when in org-mode
(setq confirm-kill-emacs 'yes-or-no-p)

;; Don't indent with tabs (sadly Emacs indentation is crazy with tabs)
(set-default 'indent-tabs-mode nil)

;; Allow shortcuts for yes/no questions
(defalias 'yes-or-no-p 'y-or-n-p)

;; Don't clutter up directories with backup files
(setq backup-directory-alist `(("." . ,(expand-file-name
                                        (concat dotfiles-dir "backups")))))

(setq require-final-newline t)

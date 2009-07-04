;; Mac key settings
(setq mac-pass-option-to-system t)
(setq mac-command-key-is-meta t)
(setq mac-pass-control-to-system nil)
(setq mac-pass-command-to-system nil)
(setq mac-option-modifier nil)
(setq mac-command-modifier 'meta)
(setq mac-control-modifier 'control)
(setq mac-pass-command-to-system nil)

;; Move between windows/frames with meta+arrows
(windmove-default-keybindings 'meta)

;; Always reindent on newline
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Use Vim like open line
(global-set-key "\C-o" 'vj/open-line-after)

;; Use Vim like zap up to char
(global-set-key (kbd "M-z") 'vj/zap-up-to-char)
(global-set-key (kbd "M-Z") 'vj/zap-to-char)

;; Display flymake messages in minibuffer
(define-key global-map (kbd "C-c ;") 'credmp/flymake-display-err-minibuf)

;; Icicle key bindings
(global-set-key (kbd "C-x f") 'icicle-recent-file)
(global-set-key "\C-x\C-i" 'imenu)
(global-set-key (kbd "C-x M-f") 'find-file-other-window)

;; Bind smart-split
(define-key global-map (kbd "C-c s") 'smart-split)

;; Use regex searches by default.
(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)
(global-set-key "\C-\M-s" 'isearch-forward)
(global-set-key "\C-\M-r" 'isearch-backward)

;; I want to use regexps by default with query-replace
(global-set-key (kbd "M-%") 'query-replace-regexp)
(global-set-key (kbd "C-M-%") 'query-replace)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; Flymake
(define-key global-map (kbd "C-c ;") 'credmp/flymake-display-err-minibuf)

;; Anything
(define-key global-map (kbd "C-'") 'anything)
(define-key anything-map "\M-N" 'anything-next-source)
(define-key anything-map "\M-P" 'anything-previous-source)

;; Icicles
(global-set-key (kbd "C-x f") 'icicle-recent-file)
(global-set-key "\C-x\C-i" 'imenu)
(global-set-key (kbd "C-x M-f") 'find-file-other-window)

;; Completion that uses many different methods to find options.
(global-set-key (kbd "M-/") 'hippie-expand)

;; Help should search more than just commands
(global-set-key (kbd "C-h a") 'apropos)

;; Start eshell or switch to it if it's active.
(global-set-key (kbd "C-x m") 'eshell)

;; Start a new eshell even if one is active.
(global-set-key (kbd "C-x M") (lambda () (interactive) (eshell t)))

;; Use IBuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Remember
(global-set-key (kbd "C-c M-r") 'remember)

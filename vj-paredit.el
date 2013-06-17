(require 'paredit)

(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook             (lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook (lambda () (paredit-mode +1)))

;;; Disable conflicting shortcuts (not in vj-keyboard as this is just hiding,
;;; not defining)
(define-key paredit-mode-map (kbd "M-<up>") nil)
(define-key paredit-mode-map (kbd "M-<down>") nil)

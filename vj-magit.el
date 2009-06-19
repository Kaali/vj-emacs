(require 'magit)

;; Follow git commit message best practices in Magit.
(add-hook 'magit-log-edit-mode-hook (lambda ()
                                      (setq fill-column 72)
                                      (turn-on-auto-fill)))

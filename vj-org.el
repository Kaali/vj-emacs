(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.org.txt$" . org-mode))

;; Remove org-mode meta-cursor bindings as it's used by windmove
(add-hook 'org-mode-hook
          '(lambda ()
             (local-unset-key [(meta down)])
             (local-unset-key [(meta up)])
             (local-unset-key [(meta left)])
             (local-unset-key [(meta right)])))

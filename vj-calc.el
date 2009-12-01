(require 'calc)

;; Because M-tab is taken by OS X
(add-hook 'calc-mode-hook
          '(lambda ()
             (local-set-key [(control tab)] 'calc-roll-up)))

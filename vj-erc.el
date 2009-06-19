;; TODO: Load pals from a private file
(eval-after-load "erc"
                 '(progn
                    (setq erc-pals '("nopalsyet")
                          erc-notify-list erc-pals)
                    (require 'erc-notify)
                    (erc-completion-mode t)
                    (erc-match-mode t)
                    (erc-netsplit-mode t)
                    (erc-timestamp-mode t)
                    (erc-track-mode t)))

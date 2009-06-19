(require 'whitespace)

;; Style to zenburn
(set-face-attribute 'whitespace-tab nil
                    :foreground zenburn-bg+1
                    :background zenburn-bg)
(set-face-attribute 'whitespace-indentation nil
                    :foreground zenburn-yellow
                    :background zenburn-yellow-2)
(set-face-attribute 'whitespace-trailing nil
                    :foreground zenburn-red
                    :background zenburn-red-3)

;; My own whitespace style
(setq whitespace-style
      '(tabs trailing lines space-before-tab newline
             indentation space-after-tab tab-mark))

;; Enable whitespace-mode globally
(setq whitespace-global-modes t)
(global-whitespace-mode t)

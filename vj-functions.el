;; Vim like open line
(defun vj/open-line-after ()
  (interactive)
  (end-of-line)
  (newline-and-indent))

;; Zap up to char like in Vim, Emacs behaviour maps to M-Z
(defun vj/zap-up-to-char (arg char)
  "Zap up to a character."
  (interactive "p\ncZap up to char: ")
  (zap-to-char arg char)
  (insert char)
  (forward-char -1))

;; Build etags for a directory
(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (eshell-command
   (format "cd %s; find . -type f | xargs -n1 -P2 %s > TAGS"
           dir-name (concat vendor-dir "etags.sh"))))

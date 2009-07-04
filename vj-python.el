;; Setup Python environment
;; Note: I really don't know why all this is necessary, python-command didn't
;;       work, even though it's documented to do what I want it to do;
;;       python-python-command works though.  But I also wish to use
;;       virtualenv Python in shell, so I extend the path, and also in Pymacs.
;;       It would be easier to setup the Emacs parent environment.
(setq python-dir (concat dotfiles-dir "usr/bin/"))
(setq python-command (concat python-dir "python"))
(setq python-python-command python-command)
(setenv "PATH" (concat python-dir ":"
                       (getenv "PATH")))
(setq exec-path (append exec-path '(python-dir)))

(setenv "PYMACS_PYTHON" python-command)


;; Python style hook
(defun vj/python-hook ()
  (setq tab-width 4)
  (setq python-indent 4))
(add-hook 'python-mode-hook 'vj/python-hook)


;; Flymake Python
(when (load "flymake" t)
  (defun flymake-pylint-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list (concat python-command " " vendor-dir "epylint")
            (list local-file))))

  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init)))


;; Pymacs / rope
(setenv "PYMACS_PYTHON" (concat dotfiles-dir "usr/bin/python"))

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

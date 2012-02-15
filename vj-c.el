(setq c-default-style
      '((java-mode . "java") (awk-mode . "awk") (other . "bsd"))
      c-basic-offset 4)

(setq auto-mode-alist
      (cons '("\\.m$" . objc-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.mm$" . objc-mode) auto-mode-alist))

(defun my-c-mode-setup ()
  (subword-mode 1)
  (c-set-offset 'innamespace 0))

(add-hook 'c-mode-common-hook 'my-c-mode-setup)

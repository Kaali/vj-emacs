(require 'flymake)

(defun credmp/flymake-display-err-minibuf ()
  "Displays the error/warning for the current line in the minibuffer"
  (interactive)
  (let* ((line-no             (flymake-current-line-no))
         (line-err-info-list  (nth 0 (flymake-find-err-info flymake-err-info line-no)))
         (count               (length line-err-info-list))
         )
    (while (> count 0)
      (when line-err-info-list
        (let* ((file       (flymake-ler-file (nth (1- count) line-err-info-list)))
               (full-file  (flymake-ler-full-file (nth (1- count) line-err-info-list)))
               (text (flymake-ler-text (nth (1- count) line-err-info-list)))
               (line       (flymake-ler-line (nth (1- count) line-err-info-list))))
          (message "[%s] %s" line text)
          )
        )
      (setq count (1- count)))))


;; Setup colors to match zenburn
;; TODO: Move to vj-visual?
(set-face-attribute 'flymake-warnline nil
                    :background zenburn-bg
                    :underline "#ff7700")
(set-face-attribute 'flymake-errline nil
                    :background zenburn-bg
                    :underline "#ff0000")


;; Set Flymakebale file extensions
(setq flymake-allowed-file-name-masks
      '(("\\.c\\'" flymake-simple-make-init)
        ("\\.cpp\\'" flymake-simple-make-init)
        ("\\.cs\\'" flymake-simple-make-init)
        ("\\.pl\\'" flymake-perl-init)
        ("\\.h\\'" flymake-master-make-header-init
         flymake-master-cleanup)
        ("\\.java\\'" flymake-simple-make-java-init
         flymake-simple-java-cleanup)
        ("\\.idl\\'" flymake-simple-make-init)))
(add-hook 'find-file-hook 'flymake-find-file-hook)

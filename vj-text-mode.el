;; Turn on auto-fill in text modes
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Change cutting behaviour:
;;  "Many times you'll do a kill-line command with the only intention of
;;  getting the contents of the line into the killring. Here's an idea
;;  stolen from Slickedit, if you press copy or cut when no region is
;;  active you'll copy or cut the current line:"
;;  <http://www.zafar.se/bkz/Articles/EmacsTips>
(defadvice kill-ring-save (before slickcopy activate compile)
  "When called interactively with no active region, copy a single line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

(defadvice kill-region (before slickcut activate compile)
  "When called interactively with no active region, kill a single line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

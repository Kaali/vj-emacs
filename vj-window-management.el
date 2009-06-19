;; From http://hjiang.net/archives/253, optional arg added by
;; Väinö Järvelä
(defun smart-split (&optional arg)
  "Split the frame into 80-column sub-windows, and make sure no window has
   fewer than 80 columns.

   If OPTIONAL arg is supplied, then use that as the minimum width of the
   windows."
  (interactive "P")
  (defun smart-split-helper (w min-width)
    "Helper function to split a given window into two, the first of which
     has min-width columns."
    (if (> (window-width w) (* 2 (+ min-width 1)))
    (let ((w2 (split-window w (+ min-width 2) t)))
      (smart-split-helper w2 min-width))))
  (smart-split-helper nil (or arg 80)))

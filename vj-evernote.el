;; Copied from http://evenmere.org/users/bts/Software/elisp/omnifocus-capture.el
(defun applescript-quote-string (argument)
  "Quote a string for passing as a string to AppleScript."
    (if (equal argument "")
        "\"\""
      ;; Quote using double quotes, but escape any existing quotes or
      ;; backslashes in the argument with backslashes.
      (let ((result "")
            (start 0)
            end)
        (if (or (null (string-match "[^\"\\]" argument))
                (< (match-end 0) (length argument)))
            (while (string-match "[\"\\]" argument start)
              (setq end (match-beginning 0)
                    result (concat result (substring argument start end)
                                   "\\" (substring argument end (1+ end)))
                    start (1+ end))))
        (concat "\"" result (substring argument start) "\""))))

(defun vj-to-applescript-list (tags)
  "Convert lisp list to Applescript list"
  (concat "{" (mapconcat 'applescript-quote-string tags ",") "}"))

(defun vj-send-to-evernote (title text tags)
  "Create a new note in Evernote using Applescript"
  (let ((etitle (applescript-quote-string title))
        (etext (applescript-quote-string text))
        (etags (vj-to-applescript-list tags)))
    (do-applescript (concat "tell application \"Evernote\" to "
                    "create note with"
                    " text " etext
                    " title " etitle
                    " tags " etags))))

(defun vj-send-selection-to-evernote (start end)
  "Send a region to Evernote"
  (interactive "r")
  (vj-send-to-evernote "Region from Emacs"
                       (buffer-substring start end)
                       '("emacs")))

(require 'remember)
(defun remember-to-evernote ()
  "Remember Evernote handler"
  (let ((text (buffer-string))
        (desc (remember-buffer-desc))
        (tags (read-string "Evernote tags: " "emacs")))
    (vj-send-to-evernote desc text (split-string tags))))

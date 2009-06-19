;; Use Safari as my browser through Applescript
(setq browse-url-browser-function
    (lambda (url &optional new-window) 
      (message url)
      (do-applescript (concat "tell application \"Safari\" \n activate \n open location \"" url "\" \n end tell"))))

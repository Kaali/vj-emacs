;; Load and setup color theme
(require 'color-theme)
(global-font-lock-mode 1)
(color-theme-initialize)

(load-library "zenburn")
(zenburn)
(setq background-mode 'dark)
(setq frame-background-mode 'dark)

;; Setup font and normal/large font size switch
(setq *normal-font* "-apple-inconsolata-medium-r-normal--14-0-72-72-m-0-iso10646-1")
(setq *large-font* "-apple-inconsolata-medium-r-normal--18-0-72-72-m-0-iso10646-1")

(set-face-font 'default *normal-font*)

(defun vj/large-font ()
  "Switches to a larger font"
  (interactive)
  (set-face-font 'default *large-font*))

(defun vj/normal-font ()
  "Switches to the normal font"
  (interactive)
  (set-face-font 'default *normal-font*))


;; UI options
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(transient-mark-mode 1)
(show-paren-mode 1)
(column-number-mode 1)
(size-indication-mode t)
(set-default 'indicate-empty-lines 1)

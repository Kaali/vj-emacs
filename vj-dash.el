(autoload 'dash-at-point "dash-at-point"
  "Search the word at point with Dash." t nil)

(add-to-list 'dash-at-point-mode-alist '(clojure-mode . "clojure"))

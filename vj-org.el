(require 'org-install)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.org.txt$" . org-mode))

;; Remove org-mode meta-cursor bindings as it's used by windmove
(add-hook 'org-mode-hook
          '(lambda ()
             (local-unset-key [(meta down)])
             (local-unset-key [(meta up)])
             (local-unset-key [(meta left)])
             (local-unset-key [(meta right)])))

;; Setup Minted for listings
(setq org-export-latex-listings 'minted)
(require 'org-latex)
(add-to-list 'org-export-latex-packages-alist '("" "minted"))
(setq org-latex-to-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "bibtex %b"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(setq org-beamer-fragile-re
      "^[ \t]*\\\\begin{\\(verbatim\\|lstlisting\\|minted\\)}")
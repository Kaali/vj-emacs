(require 'anything)
(require 'anything-config)

(setq anything-sources
      '(anything-c-source-buffers
        anything-c-source-buffer-not-found
        anything-c-source-file-name-history
        anything-c-source-files-in-current-dir
        anything-c-source-man-pages
        anything-c-source-info-pages
        anything-c-source-locate
        anything-c-source-emacs-commands
        anything-c-source-bookmarks
        anything-c-source-ctags
        anything-c-source-kill-ring
        anything-c-source-register
        anything-c-source-fixme
        anything-c-source-org-headline
        anything-c-source-calculation-result
        anything-c-source-occur
        ))

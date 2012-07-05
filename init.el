;; Väinö Järvelä's Emacs Environment
;;
;; Layout and some code copied from Ryan McGuire's Emacs Environment at
;; http://github.com/EnigmaCurry/emacs/
;; Instead of ryan- prefix, I use vj-.
;;
;; Also based on my old config (http://github.com/Kaali/emacs-starter-kit/)
;; which was based on the emacs-starter-kit


;; Setup dotfiles-dir to a variable for easy transferability
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; Add all top-level subdirectories of .emacs.d to the load path
(let ((default-directory dotfiles-dir))
  (normal-top-level-add-subdirs-to-load-path))

;; Keep third party libraries seperate in ~/.emacs.d/vendor
(setq vendor-dir (concat dotfiles-dir "vendor/"))
(add-to-list 'load-path vendor-dir)
(let ((default-directory vendor-dir))
  (normal-top-level-add-subdirs-to-load-path))

;; Reverse load-path so that my packages override distro packages
(setq load-path (reverse load-path))

;; Load ELPA
(load-library "vj-elpa")


;; Autoload libaries that don't have customizations


;; Load libaries
(load-library "vj-misc")
(load-library "vj-autocomplete")
(load-library "vj-icicles")
(load-library "vj-functions")
(load-library "vj-text-mode")
(load-library "vj-c")
(load-library "vj-visual")
(load-library "vj-window-management")
;; (load-library "vj-flyspell")
(load-library "vj-yasnippet")
(load-library "vj-python")
(load-library "vj-dired")
(load-library "vj-nxml")
(load-library "vj-org")
(load-library "vj-osx")
(load-library "vj-cua")
(load-library "vj-magit")
;; (load-library "vj-flymake")
(load-library "vj-ediff")
(load-library "vj-winner")
(load-library "vj-erc")
(load-library "vj-tabkey")
(load-library "vj-whitespace")
(load-library "vj-anything")
(load-library "vj-haskell")
(load-library "vj-rst")
(load-library "vj-saveplace")
(load-library "vj-recentf")
(load-library "vj-evernote")
(load-library "vj-remember")
(load-library "vj-calc")
(load-library "vj-paredit")
(load-library "vj-evil")
(load-library "vj-undotree")

;; Keep last as it requires some of the previous libraries loaded
(load-library "vj-keyboard")

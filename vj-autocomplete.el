(require 'auto-complete-config)
(require 'auto-complete-clang)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(ac-config-default)

(setq ac-auto-start nil)
;;(setq ac-quick-help-delay 0.5)

(setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))

(defun my-ac-cc-mode-setup ()
  (setq ac-clang-flags "
-std=c++0x
-stdlib=libc++
-Wall
-I/usr/lib/clang/3.0/include/
-I/Developer/usr/lib/c++/v1/
-isysroot /Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator5.0.sdk
-D__IPHONE_OS_VERSION_MIN_REQUIRED=50000
")
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))

(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)

(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
;;(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;;(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
(add-hook 'css-mode-hook 'ac-css-mode-setup)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(global-auto-complete-mode t)

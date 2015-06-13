;;Author: luis404(luisxu404@gmail.com)
;; Add subdirectory to load-path and init modules and this directory
(add-to-list
 'load-path
 (expand-file-name "lx" user-emacs-directory))

(require 'lx-init)
(require 'init-org)

;; Markdown related setting
(autoload 'markdown-mode "markdown-mode"
          "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.lisp\\'" . lisp-mode))

;; slime setup - for common lisp programming
;;(setq inferior-lisp-program "/usr/local/bin/sbcl")
;;(add-to-list 'load-path "~/.emacs.d/slime-2.12/")
;;(require 'slime)
;;(slime-setup)


;; enable paredit mode for lisp programming
    (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
    (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
    (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
    (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
    (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
    (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
    (add-hook 'scheme-mode-hook           #'enable-paredit-mode)

;; Enable ido mode -- for buffer auto completion
(ido-mode t)
;; Enable smex -- for command completion
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

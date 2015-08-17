;;Author: luis404(luisxu404@gmail.com)
;; Add subdirectory to load-path and init modules and this directory

(add-to-list 'load-path "~/.emacs.d/download/")
(add-to-list
 'load-path
 (expand-file-name "lx" user-emacs-directory))

(require 'lx-init)
(require 'init-org)

;;(require 'alert)
;;(require 'request)
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

;;=============== HELM ==================
;;(require 'helm)
;;(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
;;(global-set-key (kbd "C-c h") 'helm-command-prefix)
;;(global-unset-key (kbd "C-x c"))

;;(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
;;(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
;;(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
;;(when (executable-find "curl")
;;  (setq helm-google-suggest-use-curl-p t))

;;(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
 ;;     helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
  ;;    helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
   ;;   helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
    ;;  helm-ff-file-name-history-use-recentf t)

;;(helm-mode 1)"
;;=============== HELM ==================

;; ============== emacs cool calendar ===============
(require 'calfw)
(require 'calfw-cal)
(require 'calfw-org)

(defun my-open-calendar ()
  (interactive)
  (cfw:open-calendar-buffer
   :contents-sources
   (list
    (cfw:org-create-source "Red")  ; orgmode source
    (cfw:cal-create-source "Orange") ; diary source
   ))) 
;; ============== emacs cool calendar ===============


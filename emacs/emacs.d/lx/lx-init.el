;;Author: luis404(luisxu404@gmail.com)

;; My elisp learn file
(require 'lxlab)
;; Emacs color theme file
(require 'color-theme)
(color-theme-initialize)
(color-theme-xemacs)
;; Init xcscope
(require 'xcscope)
(setq package-enable-at-startup nil)
(package-initialize)
;;Calendar
(require 'lx-diary)

(provide 'lx-init)

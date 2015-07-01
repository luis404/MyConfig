;; OrgMode init
;;Author: luis404(luisxu404@gmail.com)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;;include emacs diary to org agenda
(setq org-agenda-include-diary t)


;; org mode config
(setq org-agenda-files (list "~/Dropbox/lx/note.org"
                             "~/Dropbox/coohua/coohua.org"))

(appt-activate 1)
(org-agenda-to-appt)
(provide 'init-org)

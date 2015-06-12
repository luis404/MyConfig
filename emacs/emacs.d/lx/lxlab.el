(defun lx-open-note ()
  (interactive)
    (find-file "~/Dropbox/lx/note.org"))

(defun lx-open-emacsnote ()
  (interactive)
  (find-file "~/LX/github/blog/org/post/2015-01-12-Emacs-Learn.org"))

(defun lx-open-coohua ()
  (interactive)
  (find-file "~/coohua/coohua.org"))

(defun lx-open-draft ()
  (interactive)
  (find-file "~/coohua/coohua.org"))

(defun lxel ()
  "This is lx's elisp file"
  (interactive)
  (find-file "~/lx/emacs/lx.el"))

(defvar lx_buf_var nil "A test buffer variable")
(set (make-local-variable 'lx_buf_var) 12)

(defun print-upper-region ()
  "Demo to print the uppercased version of the active region."
  (interactive)
    (setq cur-line (get-line))
    (message "%S" cur-line))

(defun lx-buffer-test ()
  (interactive)
;;  (message "%S %s" (point) (point-max))
  (message "%S" (buffer-substring-no-properties (region-beginning)
				  (region-end)))
  )

(defun lx-insert-author ()
  (interactive)
  (insert "Author: " "luis404" "(luisxu404@gmail.com)"))

(defun lx-end ()
  (interactive)
  ;;  (end-of-line)
  (message "%S" (buffer-string))
  )

(defun lx-reload ()
  (interactive)
  (load-file "~/.emacs"))

(defun get-line ()
  "get the current point line"
  (interactive)
  (beginning-of-line)
  (setq p1 (point))
  (end-of-line)
  (setq p2 (point))
;;  (message  "%S %S" p1 p2 )
  (buffer-substring-no-properties p1 p2))

(provide 'lxlab)

;; Author: luis404(luisxu404@gmail.com)

;;; Below is test functions
(defun lx-print-list (list)
  (while list
    (print (car list))
    (setq list (cdr list))))

(defun lx-test-print-trim-list ()
  (interactive)
  (print (lx-trim-list (split-string (lx-get-line) "[ ]+"))))

(defun lx-test-print-line ()
    (interactive)
    (print (lx-get-line)))

(defun lx-test-split-string ()
  (interactive)
  (print (split-string (lx-get-line) " ")))

;;;Below is basic functions
;; ============================================
;; get the whole line string when the cursor is
(defun lx-get-line ()
  "get the current point line"
  (interactive)
  (beginning-of-line)
  (setq p1 (point))
  (end-of-line)
  (setq p2 (point))
  (buffer-substring-no-properties p1 p2))

(defun lx-trim-left (s)
  (if (string-match "\\`[ \t\n\r]+" s)
      (replace-match "" t t s)
    s))
(defun lx-trim-right (s)
  "Remove whitespace at the end of S."
  (if (string-match "[ \t\n\r]+\\'" s)
      (replace-match "" t t s)
    s))

(defun lx-trim (s)
  "Remove whitespace at the beginning and end of S."
  (lx-trim-left (lx-trim-right s)))

(defun lx-trim-list (list)
  (setq result '())
  (while list
    (push (lx-trim (car list)) result)
    (setq list (cdr list)))
;;      (print result)
  result)
;; =============== Basic Funcs =================

;;;Below is some handy functions
;; ===========================================
;; open coohua code with magit
(defun lx-magit-ch ()
  (interactive)
  (org-agenda-to-appt)
  (magit-status "~/coohua/Coohuaclient"))

;; reload emacs file after change
(defun lx-reload ()
  (interactive)
  (load-file "~/.emacs"))

;; insert author info in the current point
(defun lx-insert-author ()
  (interactive)
  (insert "Author: " "luis404" "(luisxu404@gmail.com)"))

;; open some files
(defun lx-open-note ()
  (interactive)
  (org-agenda-to-appt)
    (find-file "~/Dropbox/lx/note.org"))

(defun lx-open-emacsnote ()
  (interactive)
  (find-file "~/LX/github/blog/org/post/2015-01-12-Emacs-Learn.org"))

(defun lx-open-coohua ()
  (interactive)
  (org-agenda-to-appt)
  (find-file "~/coohua/coohua.org"))

(defun lxel ()
  "This is lx's elisp file"
  (interactive)
  (find-file "~/.emacs.d/lx/lxlab.el"))

(defun lx-M ()
  (interactive)
  (setq items (lx-trim-list
	       (split-string (lx-get-line) "[ ]+")))
  (setq sum 0)
  (while items
    (setq item (car items))
    (if (string-match-p "/" item) 
	nil
      (setq sum (+ sum (string-to-number item))))
    (setq items (cdr items)))
  (insert (concat (format "%.2f" sum "|"))))
		  
;; =============== Handy Funcs =====================

;; =============== Org Publish =====================
(setq org-publish-project-alist
      '(("github-blog"
	 :base-directory "/Users/douhua/lx/github/blog/org/post/"
	 :publishing-directory "/Users/douhua/lx/github/blog/_posts/"
	 ;;:base-directory "/Users/douhua/lx/org/post/"
	 ;;:publishing-directory "/Users/douhua/lx/org/_posts/"
	 :prepare-function nil
	 :completion-function nil
	 :exclude "*.html"
	 :recursive nil
	 :base-extension "org"
	 :publishing-function org-html-publish-to-html
	 :body-only t
	 )))

(defun lx-public-blog nil
  "Publish my github blog"
  (interactive)
  (org-publish))
;; =============== Org Publish =====================


(provide 'lxlab)

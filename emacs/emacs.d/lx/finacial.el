
(setq lxm-file "~/Dropbox/lx/finacial")
(setq lxm-hash (make-hash-table))

(defun lxm-read-file (filename)
  (with-temp-buffer
    (insert-file-contents filename)
    (split-string (buffer-string) "\n" t "[,]")))


(defun lxm-build-hash-table (strlists)
  (let ((key nil)
	(value nil))
    (dolist (elt strlists)
      (if (string-match ":" elt) (setq value (cons elt value))
	((if key ((puthash lxm-hash key value)
		  (setq value nil)))
	 (setq key elt))
	(print value)))))


(defun lxm-test-if ()
  (if '(1)
      ((print "1")
    (print "2"))
    (print "3")))

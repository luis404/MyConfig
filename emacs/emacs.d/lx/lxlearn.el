
;; =============== Learn =====================
;; -------------- MATH ----------------
(defun lxabs (x)
  (cond ((> x 0) x)
	((< x 0) (- x))
	((= x 0) 0)))
(defun lxabs2 (x)
  (if (< x 0)
      (- x)
    x))
(defun lxscore (x)
  (cond ((< x 60) (print "below 60"))
	((and (> x 60) (< x 80)) (print "fine"))
	((> x 80) (print "excellent"))
	))

(defun lxsquare (x)
  (* x x))
(defun lxgood-enough (guess x)
   (< (lxabs (- (lxsquare guess) x)) 0.0001))
(defun lximprove-guess (guess x)
  (/ (+ guess (/ x guess))
     2))
(defun lxsqrt (guess x)
  (if (lxgood-enough guess x)
      guess
    (lxsqrt (lximprove-guess guess x) x)))

(defun lxsqrt2 (x)
  (defun good-enough (guess)
    (< (lxabs (- (lxsquare guess) x))
       0.0001))
  (defun improve (guess)
    (/ (+ guess (/ x guess))
       2))
  (defun sqrts-filter (guess)
    (if (good-enough guess)
	guess
      (sqrts-filter (improve guess))))
  (sqrts-filter 1.0))

(defun lxsum (term a next b)
  (message "%d%d" a b)
  (if (> a b)
      0
    (+ (funcall term a)
     (lxsum term (funcall next a) next b))))
(defun lxinc (x)
  (+ x 1))
(defun funcall-test (lxfun x)
  (funcall lxfun x))
;; -------------- MATH ----------------


(defun lx-interactive (a)
  "test interactive"
  (interactive "p")
  (message "result is %d" (lxsquare a)))

(defun lx-interactive2 (a b)
  "test interactive"
  (interactive "p\ncZap to char")
  (message "result is %d" (lxsquare a)))


;; ------------------ BUFFER --------------
(defun lx-begin-of-buffer ()
  (interactive)
  (push-mark)
  (goto-char (point-min)))

(defun lx-push-mark-test ()
  (interactive)
  (push-mark (point) nil t)
  (goto-char (+ (point) 10)))
	     
(defun lx-append-to-buffer (buffer start end)
  (interactive
   (list (read-buffer "Append to buffer: "
		      (other-buffer (current-buffer) t))
         (region-beginning) (region-end)))
  (let ((oldbuf (current-buffer)))
    (save-excursion
      (let* ((append-to (get-buffer-create buffer))
             (windows (get-buffer-window-list append-to t t))
             point)
        (set-buffer append-to)
        (setq point (point))
        (barf-if-buffer-read-only)
        (insert-buffer-substring oldbuf start end)
        (dolist (window windows)
	  (when (= (window-point window) point)
            (set-window-point window (point))))))))

;; ------------------ BUFFER --------------
;; =============== Learn =====================

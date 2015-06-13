;;My diary configuration
;;Author: luis404(luisxu404@gmail.com)

(setq calendar-remove-frame-by-deleting t)

(setq general-holidays nil)
(setq all-christian-calendar-holidays nil)
(setq all-hebrew-calendar-holidays nil)
(setq all-islamic-calendar-holidays nil)

(setq diary-file "~/Dropbox/lx/emacs-diary")

(setq mark-diary-entries-in-calendar t)       ; 标记有记录的日子  
(setq mark-holidays-in-calendar nil)          ; 标记节假日  
(setq view-calendar-holidays-initially nil)   ; 不显示节日列表

;;Show calendar at start time
;;(setq view-diary-entries-initially t)
;;(calendar)

(provide 'lx-diary)


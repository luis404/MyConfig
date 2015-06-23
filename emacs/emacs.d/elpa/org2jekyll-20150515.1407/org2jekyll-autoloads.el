;;; org2jekyll-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "org2jekyll" "org2jekyll.el" (21895 64349 0
;;;;;;  0))
;;; Generated autoloads from org2jekyll.el

(autoload 'org2jekyll-create-draft "org2jekyll" "\
Create a new Jekyll blog post with TITLE.

\(fn)" t nil)

(autoload 'org2jekyll-list-posts "org2jekyll" "\
Lists the posts folder.

\(fn)" t nil)

(autoload 'org2jekyll-list-drafts "org2jekyll" "\
Lists the drafts folder.

\(fn)" t nil)

(autoload 'org2jekyll-publish "org2jekyll" "\
Publish the current org file as post or page depending on the chosen layout.
Layout `'post`' is a jekyll post.
Layout `'default`' is a page.

\(fn)" t nil)

(autoload 'org2jekyll-publish-posts "org2jekyll" "\
Publish all the posts.

\(fn)" t nil)

(autoload 'org2jekyll-publish-pages "org2jekyll" "\
Publish all the pages.

\(fn)" t nil)

(autoload 'org2jekyll-mode "org2jekyll" "\
Functionality for publishing the current org-mode post to jekyll.
With no argument, the mode is toggled on/off.
Non-nil argument turns mode on.
Nil argument turns mode off.

Commands:
\\{org2jekyll-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; org2jekyll-autoloads.el ends here

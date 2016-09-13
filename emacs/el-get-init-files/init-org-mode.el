;;;setup org-mode
(setq org-confirm-babel-evaluate nil)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((dot . t)))
 

(setq org-publish-project-alist
      '(
        ("org-notes"
         :base-directory "~/work/wiki/org"
         :base-extension "org"
         :exclude "level-[0-9].org"
         :publishing-directory "~/work/wiki/public_html"
         :recursive t
         :publishing-function org-html-publish-to-html
         :auto-sitemap t
         )
        ("org-css"
         :base-directory "~/work/wiki/org/css"
         :base-extension "css"
         :publishing-directory "~/work/wiki/public_html/css"
         :publishing-function org-publish-attachment
         )
        ("org" :components ("org-notes" "org-css"))
        ))

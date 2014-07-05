;;setup org-mode
(setq org-confirm-babel-evaluate nil)

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
        ("org-static"
         :base-directory "~/work/wiki/org/css"
         :base-extension "css"
         :publishing-directory "~/work/wiki/public_html/css"
         :publishing-function org-publish-attachment
         )
        ("org" :components ("org-notes" "org-static"))
        ))

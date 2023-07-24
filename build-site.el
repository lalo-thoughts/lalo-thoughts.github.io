;; This scripts builds the 'lalo-thoughts.github.io' website
;;   Adil Mokhammad 2023

(require 'ox-publish)

(package-initialize)

(use-package htmlize :ensure t)

(setq org-html-validation-link nil
      org-html-head-include-scripts nil
      org-html-head-include-default-style nil
      org-html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\" />")

(setq org-publish-project-alist
      (list
       (list
        "lalo-thoughts"
        :recursive t
        :base-directory "./content"
        :publishing-directory "./docs"
        :publishing-function 'org-html-publish-to-html
        :with-author nil
        :with-creator t
        :with-toc nil
        :section-numbers nil
        :time-stamp-file nil
        :html-html5-fancy t
        :html-doctype "html5")
       ;; (list
       ;;  "images"
       ;;  :recursive t
       ;;  :base-directory "./media"
       ;;  :publishing-directory "./docs/media"
       ;;  :publishing-function 'org-publish-attachment)
       ))

(org-publish-all t)

(message "Build complete")

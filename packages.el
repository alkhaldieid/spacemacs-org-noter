(defconst org-noter-packages
  '(org-noter))

(defun org-noter/init-org-noter ()
  (use-package org-noter
    :after (:any org pdf-view)
    :config
    (setq
     ;; The WM can handle splits
     org-noter-notes-window-location 'other-frame
     ;; Please stop opening frames
     org-noter-always-create-frame nil
     ;; I want to see the whole file
     org-noter-hide-other nil
     ;; Everything is relative to the main notes file
     org-noter-notes-search-path (list org_notes)
     )
    )
  )

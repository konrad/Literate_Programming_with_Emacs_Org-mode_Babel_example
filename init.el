; no startup message
(setq inhibit-startup-message t)

; highlight marked area
(setq transient-mark-mode t)

; Used org-mode for org-files
(setq auto-mode-alist (append '(("\\.org\\'" . org-mode)) auto-mode-alist))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (R . t)
   (sh . t)
   (python . t)))

(setq org-babel-python-command "python3")

(setq org-confirm-babel-evaluate nil)

(setq org-src-fontify-natively t)


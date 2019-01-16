;; >>> GENERAL
(load-theme 'tango-dark) ;; Change color scheme. See "M-x customize-themes" for more options.
(add-to-list 'default-frame-alist '(fullscreen . maximized)) ;; Start maximised
(tool-bar-mode -1) ;; Hide toolbar.
(setq backup-by-copying t) ;; Stop emacs from breaking hard links when editing files
(setq ispell-dictionary "en_GB-ise-w_accents") ;; Use proper English.
(setq calendar-date-style 'iso) ;; Set date style for diary/calendar eg: 2000/01/25
(setq calendar-week-start-day 1) ;; Start the week on Monday

;; >>> TEXT EDITING
(setq indent-tabs-mode t) ;; Indent using tabs instead of spaces.
(setq default-tab-width 4) ;; Set tab width to 4 rather than 8.

;; >>> DIRECTORY EDITOR (DIRED)
(setq dired-listing-switches "-alh --group-directories-first")

;; >>> ORG MODE
(setq org-todo-keyword-faces '(
							   ("WAIT" . "cyan")
							   ("SOON" . "orange")
							   ("NEXT" . "yellow")
							   ("NOW!" . "white")
							   ("DROP" . "gray")
							   ))

; ELPA package support
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("MELPA" . "http://melpa.milkbox.net/packages/"))
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
  (package-initialize)
  )






